import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/router/app_router_export.dart';

const border = OutlineInputBorder(
  borderSide: BorderSide(
    width: 0,
    color: AppColor.transparent,
  ),
);

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final int? maxLines;


  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: theme.textTheme.bodySmall?.copyWith(
        color: theme.colorScheme.background,
      ),
      cursorColor: theme.colorScheme.background,
      decoration: InputDecoration(
        focusedBorder: border,
        focusedErrorBorder: border,
        disabledBorder: border,
        enabledBorder: border,
        border: border,
        filled: true,
        fillColor: AppColor.lightGrayEB,
        contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 30),
        hintText: hintText,
      ),
    );
  }
}
