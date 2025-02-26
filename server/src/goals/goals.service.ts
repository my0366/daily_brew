import {Injectable, InternalServerErrorException} from '@nestjs/common';
import {CreateGoalDto} from './dto/create-goal.dto';
import {UpdateGoalDto} from './dto/update-goal.dto';
import {InjectRepository} from "@nestjs/typeorm";
import {Goal} from "./entities/goal.entity";
import {Repository} from "typeorm";
import {User} from "../auth/entity/user.entity";

@Injectable()
export class GoalsService {
    constructor(
        @InjectRepository(Goal)
        private goalRepository: Repository<Goal>
    ) {
    }

    create(createGoalDto: CreateGoalDto, user: User) {
        try {
            const {target, startAt, endAt} = createGoalDto;
            const goal = this.goalRepository.create({
                target,
                startAt,
                endAt,
                user,
            });
            return this.goalRepository.save(goal);
        } catch (e) {
            console.error('Error creating goal:', e.message);
            console.error(e.stack);
            throw new InternalServerErrorException("목표 생성 중 에러가 발생했습니다.");
        }
    }

    async findAll() {
        try {
            const goal: Goal[] = await this.goalRepository.find();
            return goal;
        } catch (e) {
            throw new InternalServerErrorException("");
        }
    }

    async findMyGoal(user: User) {
        try {
            console.log(user);
            return await this.goalRepository.findOneBy({user});
        } catch (e) {
            console.error('Error finding goal:', e.message);
            throw new InternalServerErrorException("");
        }
    }

    findOne(id: number) {
        return `This action returns a #${id} goal`;
    }

    update(id: number, updateGoalDto: UpdateGoalDto) {
        return `This action updates a #${id} goal`;
    }

    remove(id: number) {
        return `This action removes a #${id} goal`;
    }
}
