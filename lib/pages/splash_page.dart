import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/pages/theme.dart';


class SplashPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea (
        bottom: false,
        child: Stack(
          children: [
            Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/tema.png'),
        ),
          Padding(
          padding: EdgeInsets.only(
            top: 17,
            left: 15,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo4.png'),
            )
          ),
        ),
          SizedBox(
            height: 15,
          ),
          Text(' Anda Cari Kosan \n Murah Dan Terjangkau.',
          style: blackTextStyle.copyWith(
              fontSize: 24,
            ),
           ),
          SizedBox(
            height: 4,
          ),
          Text('Stop Membuang banyak waktu \npada tempat yang tidak habitat',
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 127,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context) => HomePage(

          ),
              ),
          );

              },

              child: Text(
                  'Jelajahi',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ),
          ),
         ],
        ),
       ),

      ],

    ),
    ),

    );
  }
}