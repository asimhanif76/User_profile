import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final Icon? icon;
  final String pageTitle;
  String? trailingText;
  TextStyle? myStyle;
  final VoidCallback? callbackFunction;
  TitleBar({
    required this.icon,
    required this.pageTitle,
    this.myStyle,
    this.trailingText = '',
    this.callbackFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Center(
                child: IconButton(
                  onPressed: callbackFunction,
                  icon: icon!,
                  iconSize: 16,
                ),
              )),
          Text(
            pageTitle,
          ),
          Text(
            trailingText!,
            style: myStyle,
          ),
        ],
      ),
    );
  }
}

class myTextField extends StatelessWidget {
  Icon prefixIcon;
  String? sufixText;
  String? hintText;
  TextEditingController controller;
  myTextField(this.prefixIcon, this.sufixText, this.controller, this.hintText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          hintText: hintText,
          suffixText: sufixText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
