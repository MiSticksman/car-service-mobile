import 'package:core/src/fun_extensions/let.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValidatedTextField extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback? onTap;
  final String? label;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final bool readonly;
  final EdgeInsets? padding;

  const ValidatedTextField({
    super.key,
    required this.controller,
    this.label,
    this.onTap,
    this.textInputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.hintText,
    this.readonly = false,
    this.padding,
  });

  @override
  State<ValidatedTextField> createState() => _ValidatedTextFieldState();
}

class _ValidatedTextFieldState extends State<ValidatedTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 56,
                child: GestureDetector(
                  onTap: widget.onTap,
                  child: TextField(
                    autocorrect: false,
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    inputFormatters: widget.inputFormatters,
                    textAlignVertical: TextAlignVertical.bottom,
                    textInputAction: widget.textInputAction,
                    keyboardType: widget.keyboardType,
                    focusNode: _focusNode,
                    onSubmitted: (_) => FocusScope.of(context).unfocus(),
                    controller: widget.controller,
                    readOnly: widget.readonly,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            4,
                          ),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFEBEEF1),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 9,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: theme.colorScheme.onSecondary,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: widget.hintText,
                      label: widget.label.let(
                        (label) => ListenableBuilder(
                          listenable: Listenable.merge(
                            [
                              _focusNode,
                              widget.controller,
                            ],
                          ),
                          builder: (context, child) {
                            return Transform.translate(
                              offset: _focusNode.hasFocus ||
                                      widget.controller.text.isNotEmpty
                                  ? const Offset(0, 20)
                                  : const Offset(0, 10),
                              child: Text(
                                label ?? '',
                                style: TextStyle(
                                  color: theme.colorScheme.onSecondary,
                                  fontSize: _focusNode.hasFocus ||
                                          widget.controller.text.isNotEmpty
                                      ? 12
                                      : 16,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
