import 'package:flutter/material.dart';
import '../shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String title, hint;
  final EdgeInsets margin;
  final bool obscure;

  const CustomTextField(
      {Key? key,
      required this.title,
      this.hint = "",
      this.margin = EdgeInsets.zero,
      this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscure,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
