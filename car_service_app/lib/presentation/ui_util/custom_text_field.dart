import 'package:car_service_app/app/app_color.dart';
import 'package:car_service_app/router/app_router_export.dart';


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
        color: theme.colorScheme.primary,
      ),
      cursorColor: theme.colorScheme.onSecondary,
      decoration: InputDecoration(
        focusedBorder: textFieldBorder(theme.colorScheme.onSurface),
        disabledBorder: textFieldBorder(theme.colorScheme.onSecondary),
        enabledBorder: textFieldBorder(theme.colorScheme.onSecondary),
        border: textFieldBorder(theme.colorScheme.onSecondary),
        filled: true,
        fillColor: AppColor.lightGrayEB,
        contentPadding: const EdgeInsets.fromLTRB(12, 0, 12, 30),
        hintText: hintText,
        hintStyle: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onSecondary,
        ),
      ),
    );
  }

  InputBorder textFieldBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        width: 2,
        color: color,
      ),
    );
  }
}
