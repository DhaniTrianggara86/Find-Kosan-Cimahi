import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/home_page.dart';
import 'package:flutter_basic/pages/theme.dart';


class ErrorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Image.asset('assets/404.png',

          width: 300,

          ),
            SizedBox(
              height: 70),
              Text('Kemana Kamu Akan Pergi',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
            ),
            SizedBox(
              height: 25

            ),
            Text('cari lagi tempat yang sesuai',
            style: greyTextStyle.copyWith(
              fontSize: 16
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
              width: 20,
            ),
            Container(
              width: 210,
              height: 50,

              ),
            ElevatedButton(onPressed: (

                ) {

Navigator.pushAndRemoveUntil(context,
    MaterialPageRoute(builder: (context)  => HomePage(),
              ),
              (route) => false);

            },

              child: Text('Kembali',

                style: whiteTextStyle.copyWith(


  fontSize: 18,

                ),
),


            ),
    ]

        ),

        ),

      ),

    );
  }
}