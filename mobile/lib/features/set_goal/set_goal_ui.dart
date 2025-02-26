import 'package:daily_brew/features/set_goal/set_goal_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class SetGoalUI extends ConsumerWidget {
  const SetGoalUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(setGoalNotifierProvider.notifier);
    final state = ref.watch(setGoalNotifierProvider);
    return Column(
      children: [
        ShadDateRangePickerFormField(
          expands: true,
          height: 50,
          valueTransformer: (v) => v != null ? '${v.start} - ${v.end}' : null,
          label: const Text('날짜 범위'),
          calendarHeaderTextStyle: ShadTheme.of(context).textTheme.large,
          onChanged: (date) {
            if (date != null) {
              ref.read(setGoalNotifierProvider.notifier).setDate(date);
            }
          },
          validator: (v) {
            if (v == null) return '날짜 범위가 필요합니다.';
            if (v.start == null) {
              return '시작 날짜가 필요합니다.';
            }
            if (v.end == null) return '종료 날짜가 필요합니다.';

            return null;
          },
        ),
        Gap(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShadButton(
              decoration: ShadDecoration(
                border: ShadBorder(radius: BorderRadius.circular(25)),
              ),
              width: 50,
              height: 50,
              onPressed: () {
                notifier.decreaseTargetCup();
              },
              child: Text(
                "-",
                style: ShadTheme.of(context).textTheme.large.copyWith(
                      color: ShadTheme.of(context).colorScheme.background,
                    ),
              ),
            ),
            Text(
              "${state.createGoalDto.target.toString()} 잔",
              style: ShadTheme.of(context).textTheme.large,
            ),
            ShadButton(
              decoration: ShadDecoration(
                border: ShadBorder(radius: BorderRadius.circular(25)),
              ),
              width: 50,
              height: 50,
              onPressed: () {
                notifier.increaseTargetCup();
              },
              child: Text(
                "+",
                style: ShadTheme.of(context).textTheme.large.copyWith(
                      color: ShadTheme.of(context).colorScheme.background,
                    ),
              ),
            ),
          ],
        ),
        Gap(12),
        ShadButton(
          width: double.infinity,
          height: 50,
          enabled: ref.watch(setGoalNotifierProvider.notifier).isValid(),
          onPressed: () {
            ref.read(setGoalNotifierProvider.notifier).setGoal().then(
              (value) {
                context.go('/home');
              },
            );
          },
          child: Text(
            '로그인',
            style: ShadTheme.of(context).textTheme.h4.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
