import 'package:daily_brew/app/app_provider.dart';
import 'package:daily_brew/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class BrewApp extends ConsumerWidget {
  const BrewApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShadApp.custom(
      themeMode: ref.watch(appProvider),
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: ShadColorScheme.fromName(
          'orange',
          brightness: Brightness.dark,
        ),
      ),
      theme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: ShadColorScheme.fromName('orange'),
      ),
      appBuilder: (context, theme) {
        print(theme.brightness);
        return MaterialApp.router(
          routerConfig: router,
          theme: theme,
          builder: (context, child) {
            return ShadToaster(child: child!);
          },
        );
      },
    );
  }
}
