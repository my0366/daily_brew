import {Controller, Get, Post, Body, Patch, Param, Delete, UseGuards} from '@nestjs/common';
import {GoalsService} from './goals.service';
import {CreateGoalDto} from './dto/create-goal.dto';
import {UpdateGoalDto} from './dto/update-goal.dto';
import {AuthGuard} from "@nestjs/passport";
import {GetUser} from "../@common/decorators/get-user.decorator";
import {User} from "../auth/entity/user.entity";

@Controller('goals')
@UseGuards(AuthGuard())
export class GoalsController {
    constructor(private readonly goalsService: GoalsService) {
    }


    @Post()
    create(@Body() createGoalDto : CreateGoalDto, @GetUser() user: User) {
        return this.goalsService.create(createGoalDto, user);
    }

    @Get()
    findAll(@GetUser() user: User) {
        return this.goalsService.findAll();
    }

    @Get("current")
    findMyGoal(@GetUser() user: User) {
        return this.goalsService.findMyGoal(user);
    }

    @Get(':id')
    findOne(@Param('id') id: string, @GetUser() user: User) {
        return this.goalsService.findOne(+id);
    }

    @Patch(':id')
    update(@Param('id') id: string, @Body() updateGoalDto: UpdateGoalDto) {
        return this.goalsService.update(+id, updateGoalDto);
    }

    @Delete(':id')
    remove(@Param('id') id: string) {
        return this.goalsService.remove(+id);
    }
}
