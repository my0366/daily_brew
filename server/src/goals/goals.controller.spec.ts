import { Test, TestingModule } from '@nestjs/testing';
import { GoalsController } from './goals.controller';
import { GoalsService } from './goals.service';
import { CreateGoalDto } from './dto/create-goal.dto';
import { UpdateGoalDto } from './dto/update-goal.dto';
import { User } from '../auth/entity/user.entity';

describe('GoalsController', () => {
  let controller: GoalsController;
  let service: GoalsService;

  const mockUser: User = {} as User;

  const mockGoalsService = {
    create: jest.fn((dto, user) => ({ id: 1, ...dto, user })),
    findAll: jest.fn(() => [{ id: 1, title: 'Goal 1' }]),
    findMyGoal: jest.fn((user) => [{ id: 1, user, title: 'My Goal' }]),
    findOne: jest.fn((id) => ({ id, title: 'Goal 1' })),
    update: jest.fn((id, dto) => ({ id, ...dto })),
    remove: jest.fn((id) => ({ id })),
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GoalsController],
      providers: [{ provide: GoalsService, useValue: mockGoalsService }],
    }).compile();

    controller = module.get<GoalsController>(GoalsController);
    service = module.get<GoalsService>(GoalsService);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });

  it('should create a goal', () => {
    const dto: CreateGoalDto = { id : 1, target: 100, startAt: new Date(), endAt: new Date() };
    expect(controller.create(dto, mockUser)).toEqual({
      id: 1,
      target : 100,
    });
    expect(service.create).toHaveBeenCalledWith(dto, mockUser);
  });

  it('should return all goals', () => {
    expect(controller.findAll(mockUser)).toEqual([{ id: 1, title: 'Goal 1' }]);
    expect(service.findAll).toHaveBeenCalled();
  });

  it('should return user-specific goals', () => {
    expect(controller.findMyGoal(mockUser)).toEqual([{ id: 1, user: mockUser, title: 'My Goal' }]);
    expect(service.findMyGoal).toHaveBeenCalledWith(mockUser);
  });

  it('should return a goal by id', () => {
    expect(controller.findOne('1', mockUser)).toEqual({ id: 1, title: 'Goal 1' });
    expect(service.findOne).toHaveBeenCalledWith(1);
  });
});
