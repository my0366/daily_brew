import {IsString, Matches, MaxLength, MinLength} from 'class-validator';

export class AuthDto {
    @IsString()
    @MinLength(2)
    @MaxLength(20)
    @Matches(/^[a-zA-Z]*$/, {
        message: '아이디는 2자에서 20자 사이의 숫자여야 합니다.',
    })
    userId: string;

    @IsString()
    @MinLength(8)
    @MaxLength(20)
    @Matches(/^[a-zA-z0-9]*$/, {
        message: '비밀번호가 영어 또는 숫자 조합이 아닙니다.',
    })
    password: string;
}
