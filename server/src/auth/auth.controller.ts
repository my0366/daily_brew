import {Body, Controller, Get, Post} from '@nestjs/common';
import {AuthDto} from "./dto/auth.dto";
import {AuthService} from "./auth.service";

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) {
    }

    @Get('sign-in')
    async signIn(@Body() authDto: AuthDto) {
        return this.authService.signIn(authDto);
    }

    @Post('sign-up')
    async signUp(@Body() authDto: AuthDto) {
        return this.authService.signUp(authDto);
    }
}
