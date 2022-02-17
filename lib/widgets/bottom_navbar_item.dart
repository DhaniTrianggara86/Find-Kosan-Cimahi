import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/theme.dart';


 class BottomNavbarItem extends StatefulWidget{

String imageUrl;
bool isActive;

BottomNavbarItem({required this.imageUrl, required this.isActive});

  @override
  _BottomNavbarItemState createState() => _BottomNavbarItemState();
}

class _BottomNavbarItemState extends State<BottomNavbarItem> {
   @override
   Widget build(BuildContext context){
     return Column(
    children: [
      Spacer(),
      Image.asset(widget.imageUrl,
      width: 26,
      ),
        Spacer(),
        widget.isActive ? Container(
          width: 30,
        height: 2,
        decoration:BoxDecoration(
          color:purpleColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(1000),
          ),
        ),
        ):
            Container(),
    ],
     );
   }
}