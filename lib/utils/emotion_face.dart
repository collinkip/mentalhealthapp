import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticoFace;

   
  const EmoticonFace({Key? key,required this.emoticoFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.blue[600],
        borderRadius: BorderRadius.circular(12 )
      ),
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Text(
          emoticoFace,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      )
    );
  }
}