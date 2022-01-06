import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
final String buttonName;
final Function onPress;

   CustomButton(this.buttonName,this.onPress);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: const Color(0XFFF55A00),
          borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        onPressed: () {
       setState(() {
         widget.onPress();
       });
        },
        child:  Text(
          widget.buttonName,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
