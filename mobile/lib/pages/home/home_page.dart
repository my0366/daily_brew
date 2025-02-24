import 'package:daily_brew/shared/constants/colors.dart';
import 'package:daily_brew/shared/constants/days.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  bool isNotConfigured = true;

  void _setWeeklyGoal(BuildContext context) {
    int goal = 0;
    showShadDialog(
      barrierDismissible: false,
      context: context,
      builder:
          (context) => ShadDialog(
            removeBorderRadiusWhenTiny: true,
            gap: 24,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.85,
            ),
            padding: EdgeInsets.all(30),
            title: const Text('목표량 설정'),
            description: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: StatefulBuilder(
                builder: (context, setState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShadButton(
                        decoration: ShadDecoration(
                          border: ShadBorder(radius: BorderRadius.circular(25)),
                        ),
                        width: 50,
                        height: 50,
                        onPressed: () {
                          setState(() {
                            goal -= 1;
                          });
                        },
                        child: Text(
                          "-",
                          style: ShadTheme.of(context).textTheme.large.copyWith(
                            color: ShadTheme.of(context).colorScheme.background,
                          ),
                        ),
                      ),
                      Text(
                        "${goal.toString()} 잔",
                        style: ShadTheme.of(context).textTheme.large,
                      ),
                      ShadButton(
                        decoration: ShadDecoration(
                          border: ShadBorder(radius: BorderRadius.circular(25)),
                        ),
                        width: 50,
                        height: 50,
                        onPressed: () {
                          setState(() {
                            goal += 1;
                          });
                        },
                        child: Text(
                          "+",
                          style: ShadTheme.of(context).textTheme.large.copyWith(
                            color: ShadTheme.of(context).colorScheme.background,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            actions: [
              ShadButton(
                onPressed: () {
                  context.pop();
                  setState(() {
                    isNotConfigured = false;
                  });
                },
                height: 48,
                child: Text(
                  '저장',
                  style: ShadTheme.of(context).textTheme.large.copyWith(
                    color: ShadTheme.of(context).colorScheme.background,
                  ),
                ),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShadTheme.of(context).colorScheme.backgroundColor,
      appBar: AppBar(
        title: Text("대시보드", style: ShadTheme.of(context).textTheme.large),
      ),
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child:
            isNotConfigured
                ? _buildIsNotConfigured(context)
                : Column(children: [_buildHeader(context)]),
      ),
    );
  }

  Widget _buildIsNotConfigured(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "주간 목표량이 설정되어 있지 않습니다.",
          style: ShadTheme.of(context).textTheme.h4,
        ),
        Gap(16),
        ShadButton(
          width: double.infinity,
          height: 50,
          onPressed: () => _setWeeklyGoal(context),
          child: Text(
            '설정하기',
            style: ShadTheme.of(
              context,
            ).textTheme.h4.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ShadTheme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("주간 섭취량"),
          Gap(8),
          Row(
            children: List.generate(7, (index) {
              return Expanded(
                child: Column(
                  children: [
                    Text(days[index]),
                    Gap(8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Text("월"),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
