import {Column, CreateDateColumn, UpdateDateColumn} from "typeorm";
import {IsDate, IsISO8601, IsNumber} from "class-validator";

export class CreateGoalDto {
    @IsNumber()
    id: number;

    @IsNumber()
    target: number;

    @IsISO8601()
    startAt: Date;

    @IsISO8601()
    endAt: Date;
}
