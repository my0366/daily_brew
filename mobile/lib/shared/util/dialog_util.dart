import 'package:flutter/cupertino.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DialogUtil {
  static void showDialog(
    BuildContext context,
    Widget body,
    VoidCallback onPressed,
  ) {
    showShadDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => ShadDialog(
        removeBorderRadiusWhenTiny: true,
        gap: 24,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.85,
        ),
        padding: EdgeInsets.all(30),
        title: const Text('목표량 설정'),
        description: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: body,
        ),
        actions: [],
      ),
    );
  }
}
