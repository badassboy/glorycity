import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final String? initialValue;
  final String? hintText;
  final String? label;
  final String? Function(String?)? validator;
  final String? obscuringCharacter;
  final bool? obscureText;
  final double? fontSize;
  final double? letterSpacing;
  final FocusNode? focusNode;
  final int? maxLength;
  final Widget? suffix;
  final bool? enabled;

  const CustomTextFormField({
    Key? key,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.hintText,
    this.validator,
    this.obscuringCharacter,
    this.obscureText,
    this.fontSize,
    this.initialValue,
    this.focusNode,
    this.letterSpacing,
    this.onEditingComplete,
    this.onSaved,
    this.onTap,
    this.suffix,
    this.enabled,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: label == null ? "" : '$label',
                style: const TextStyle(fontSize: 18, color: Colors.black),
                children: [
              TextSpan(
                  text: label == null ? "" : ' *',
                  style: const TextStyle(
                    color: Colors.red,
                  ))
            ])),
        SizedBox(
          height: 7,
        ),
        TextFormField(
          initialValue: initialValue,
          maxLength: maxLength,
          controller: controller,
          onChanged: onChanged,
          onTap: onTap,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onSaved: onSaved,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          obscuringCharacter: obscuringCharacter ?? '•',
          style: TextStyle(fontSize: fontSize, letterSpacing: letterSpacing),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            suffixIcon: suffix,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
            // icon: Icon(Icons.person)
          ),
          validator: validator,
        ),
      ],
    );
  }
}

class SecondaryTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final String? initialValue;
  final String? hintText;
  final String? label;
  final String? Function(String?)? validator;
  final String? obscuringCharacter;
  final bool? obscureText;
  final double? fontSize;
  final double? letterSpacing;
  final FocusNode? focusNode;
  final int? maxLength;
  final Widget? suffix;
  final bool? enabled;

  const SecondaryTextFormField({
    Key? key,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.hintText,
    this.validator,
    this.obscuringCharacter,
    this.obscureText,
    this.fontSize,
    this.initialValue,
    this.focusNode,
    this.letterSpacing,
    this.onEditingComplete,
    this.onSaved,
    this.onTap,
    this.suffix,
    this.enabled,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label',
            style: const TextStyle(fontSize: 18, color: Colors.black)),
        const SizedBox(
          height: 7,
        ),
        TextFormField(
          initialValue: initialValue,
          maxLength: maxLength,
          controller: controller,
          onChanged: onChanged,
          onTap: onTap,
          enabled: enabled,
          onEditingComplete: onEditingComplete,
          onSaved: onSaved,
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          obscuringCharacter: obscuringCharacter ?? '•',
          style: TextStyle(fontSize: fontSize, letterSpacing: letterSpacing),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            suffixIcon: suffix,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
            // icon: Icon(Icons.person)
          ),
          validator: validator,
        ),
      ],
    );
  }
}

class TextStart extends StatelessWidget {
  final String label;
  const TextStart({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: label == null ? "" : '$label',
            style: const TextStyle(fontSize: 18, color: Colors.black),
            children: [
          TextSpan(
              text: label == null ? "" : ' *',
              style: const TextStyle(
                color: Colors.red,
              ))
        ]));
  }
}
