import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/theme.dart';

class Facilities extends StatelessWidget{

  final String name;
  final String imageUrl;
  final int total;
  Facilities({required this.imageUrl, required this.name, required this.total});

  @override
Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl,
        width:32 ,
        ),
        SizedBox(
          height: 8,


         ),
        Text.rich(
          TextSpan(
            text: ' $total',
            style:purpleTextStyle.copyWith(
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: ' $name',
                style:greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],


    );
  }

}