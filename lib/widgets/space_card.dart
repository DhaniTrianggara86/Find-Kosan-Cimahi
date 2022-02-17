import 'package:flutter/material.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:flutter_basic/pages/detail_page.dart';
import 'package:flutter_basic/pages/theme.dart';

class SpaceCard extends StatelessWidget{
 final Space space;

SpaceCard(this.space);


  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap:(){
        Navigator.push(context,

            MaterialPageRoute(
        builder:(context) => DetailPage(space),

        ),
        );

    },
      child: Row(
children: [
  ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: 120,
        height: 110,
        child: Stack(
          children:[
            Image.network(
         space.imageUrl,
              width: 130,
              height: 110,
              fit: BoxFit.cover,
          ),
             Align(
              alignment: Alignment.topRight,
              child:Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                 Image.asset('assets/star.png',
                    width:22,
                    height:22,
                  ),
                      Text('${space.rating}',
                      style: whiteTextStyle.copyWith(
                        fontSize: 13,
                      ),
                      ),
                  ],
                ),
              ),
            ),
             ),
        ],
        ),
      ),
  ),
  SizedBox(
      width: 20,
  ),
  Column(
      children: [
        Text.rich(
        TextSpan(
       text: '\ ${space.name}',
        style: blackTextStyle.copyWith(
          fontSize: 14,
        ),
        ),
        ),
        SizedBox(
          height: 2,
        ),
        Text.rich(
          TextSpan(
            text: '\$${space.price}',
            style: purpleTextStyle.copyWith(
              fontSize: 16,
            ),
            children: [
          TextSpan(
              text: '/ Bulan',
          ),
              ]),

        ),


        SizedBox(
          height: 16,
        ),
        Text('${space.city},'
            '${space.country},',
             style: greyTextStyle.copyWith(
           fontSize: 14
        ),
        ),

      ],

  ),
],
      ),
    );
  }
}