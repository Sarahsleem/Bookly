import 'package:booklyapp/core/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CButton extends StatelessWidget{
const CButton ({super.key, required this.background, required this.textcolor,  this.borderRadius, required this.textbutton,  this.fontsize, this.onPressed});
final Color background;
final Color textcolor;
final BorderRadius ?borderRadius;
final String textbutton;
final double? fontsize;
final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed:onPressed,
        style: TextButton.styleFrom(
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
          child: Text(
            textbutton,
            style: Styles.text18.copyWith(color: textcolor,fontWeight: FontWeight.w900,fontSize: fontsize),

          ),
      ),
    );
  }

}