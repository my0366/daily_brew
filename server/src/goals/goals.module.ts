import {Module} from '@nestjs/common';
import {GoalsService} from './goals.service';
import {GoalsController} from './goals.controller';
import {TypeOrmModule} from "@nestjs/typeorm";
import {Goal} from "./entities/goal.entity";
import {AuthModule} from "../auth/auth.module";

@Module({
    imports: [TypeOrmModule.forFeature([Goal]), AuthModule],
    controllers: [GoalsController],
    providers: [GoalsService],
})
export class GoalsModule {
}
