import {ConflictException, Injectable, InternalServerErrorException, UnauthorizedException} from '@nestjs/common';
import {InjectRepository} from "@nestjs/typeorm";
import {User} from "./entity/user.entity";
import {Repository} from "typeorm";
import {AuthDto} from "./dto/auth.dto";
import * as bcrypt from 'bcryptjs';
import {JwtService} from "@nestjs/jwt";
import {ConfigService} from "@nestjs/config";

@Injectable()
export class AuthService {
    constructor(
        @InjectRepository(User)
        private userRepository: Repository<User>,
        private jwtService: JwtService,
        private configService: ConfigService,
    ) {
    }

    async signIn(authDto: AuthDto) {
        const {userId, password} = authDto;
        const user = await this.userRepository.findOneBy({userId});

        console.log(userId, password);
        if (!user || !(await bcrypt.compare(password, user.password))) {
            throw new UnauthorizedException(
                '이메일 또는 비밀번호가 일치하지 않습니다.',
            );
        }
        const {accessToken, refreshToken} = await this.getTokens({userId});
        await this.updateHashedRefreshToken(user.id, refreshToken);

        return {accessToken, refreshToken};
    }

    async signUp(authDto: AuthDto) {
        const {userId, password} = authDto;
        const salt = await bcrypt.genSalt();
        const hashedPassword = await bcrypt.hash(password, salt);

        const user = this.userRepository.create({
            userId,
            password: hashedPassword,
            loginType: 'id',
        });
        try {
            await this.userRepository.save(user);
        } catch (error) {
            console.log(error);
            if (error.code === '23505') {
                throw new ConflictException('이미 존재하는 아이디 입니다.');
            }

            throw new InternalServerErrorException(
                '회원가입 도중 에러가 발생했습니다.',
            );
        }
    }

    private async getTokens(payload: { userId: string }) {
        const [accessToken, refreshToken] = await Promise.all([
            this.jwtService.signAsync(payload, {
                secret: this.configService.get('JWT_SECRET'),
                expiresIn: this.configService.get('JWT_ACCESS_TOKEN_EXPIRATION'),
            }),
            this.jwtService.signAsync(payload, {
                secret: this.configService.get('JWT_SECRET'),
                expiresIn: this.configService.get('JWT_REFRESH_TOKEN_EXPIRATION'),
            }),
        ]);

        return {accessToken, refreshToken};
    }

    private async updateHashedRefreshToken(id: number, refreshToken: string) {
        const salt = await bcrypt.genSalt();
        const hashedRefreshToken = await bcrypt.hash(refreshToken, salt);

        try {
            await this.userRepository.update(id, {hashedRefreshToken});
        } catch (error) {
            console.log(error);
            throw new InternalServerErrorException();
        }
    }
}
