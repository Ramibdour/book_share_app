import 'package:book_share_app/constant.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_text_field_model.dart';

class CustomTextField extends StatefulWidget {
  final PutCustomTextField putCustomTextField;
  const CustomTextField({Key? key, required this.putCustomTextField})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 21, right: 21, top: 15),
      decoration: BoxDecoration(
          color: primerColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withAlpha(37),
              offset: const Offset(0, 3),
              blurRadius: 6,
            )
          ]),
      child: TextField(
          obscureText: widget.putCustomTextField.isScure,
          controller: widget.putCustomTextField.textController,
          keyboardType: widget.putCustomTextField.textInput,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            hintText: widget.putCustomTextField.textLabel,
            hintStyle: const TextStyle(
                fontFamily: 'SF', fontSize: 18, color: Color(0xffFFFFFF)),
            prefixIcon: SvgPicture.asset(
              widget.putCustomTextField.prefixIcons,
              fit: BoxFit.none,
            ),
            suffixIcon: widget.putCustomTextField.hasSufixIcon
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        widget.putCustomTextField.isScure =
                            !widget.putCustomTextField.isScure;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: widget.putCustomTextField.isScure
                          ? const Color(0xffCCCCCC)
                          : Colors.white,
                      size: 20,
                    ))
                : const SizedBox(
                    width: 10,
                  ),
          )),
    );
  }
}
