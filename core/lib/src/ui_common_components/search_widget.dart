import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.controller, this.hintText,
  });

  final TextEditingController controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0,
        // color: borderColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: TextField(
        controller: controller,
        // style: extraFonts?.bodySmall.copyWith(
        //   color: textColor,
        // ),
        decoration: InputDecoration(
          focusedBorder: border,
          focusedErrorBorder: border,
          disabledBorder: border,
          enabledBorder: border,
          border: border,
          // fillColor: fill,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            // color: textColor,
          ),
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
        ),
      ),
    );
  }
}