import {
    BaseEntity,
    Column,
    CreateDateColumn,
    DeleteDateColumn,
    Entity,
    OneToMany,
    PrimaryGeneratedColumn,
    Unique,
    UpdateDateColumn,
} from 'typeorm';
import {Goal} from "../../goals/entities/goal.entity";

@Entity()
@Unique(['userId'])
export class User extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    loginType: 'id' | 'kakao' | 'apple';

    @Column(
        {
            unique: true
        }
    )
    userId: string;

    @Column()
    password: string;

    @Column({nullable: true})
    nickname?: string;

    @Column({nullable: true})
    imageUri?: string;

    @CreateDateColumn()
    createdAt: Date;

    @UpdateDateColumn()
    updatedAt: Date;

    @DeleteDateColumn()
    deletedAt: Date | null;

    @Column({nullable: true})
    hashedRefreshToken?: string;

    @OneToMany(() => Goal, (goal) => goal.user)
    goals: Goal[];
}
