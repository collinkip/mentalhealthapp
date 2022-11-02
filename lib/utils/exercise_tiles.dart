import 'package:cupertino_icons/cupertino_icons.dart';

import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final icon;
  final String skillName;
  final String numberOfExercises;
  final color;
  const Exercise(
      {
        Key? key,
        this.icon, 
        required this.skillName,
       required this.numberOfExercises,
       required this.color,
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      color: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title
                    // ignore: prefer_const_constructors
                    Text(
                      skillName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    //subtitles

                    Text(
                      "$numberOfExercises Exercises",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey[700]),
                    )
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
