// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback? onPressed;
  String btnText;
  CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.btnText,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Container(
        child: ElevatedButton(
          
          style: ElevatedButton.styleFrom(fixedSize: Size(373, 60)
          
          
          
          ),
          onPressed: widget.onPressed,
          child: Text(widget.btnText),
        ),
      ),
    );
  }
}
