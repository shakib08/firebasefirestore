import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class textfield extends StatelessWidget {
  final String hintText; 
  final TextEditingController? controller;


  const textfield({Key? key, required this.hintText, required this.controller}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      width: size.width*0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
         color: Colors.grey[200],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText, 
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: size.width*0.05),
        ),
      ),
    );
  }
}