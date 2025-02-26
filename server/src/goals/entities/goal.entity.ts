import {Column, CreateDateColumn, Entity, ManyToOne, PrimaryGeneratedColumn, UpdateDateColumn} from "typeorm";
import {User} from "../../auth/entity/user.entity";

@Entity()
export class Goal {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    target: number;

    @Column()
    startAt: Date;

    @Column()
    endAt: Date;

    @UpdateDateColumn()
    updateAt: Date;

    @CreateDateColumn()
    createAt: Date;

    @ManyToOne(() => User, (user) => user.goals)
    user: User;
}
