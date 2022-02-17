import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:flutter_basic/pages/error_page.dart';
import 'package:flutter_basic/pages/theme.dart';
import 'package:flutter_basic/widgets/facilities.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget{
  final Space space;

  DetailPage(this.space);

  Widget build(BuildContext context){
  @override
  void _launchUrl(String _url) async {
    if(await canLaunch(_url)){
      launch(_url);
    }else{
     //throw "Could not launch $_url";
      Navigator.push(context,
        MaterialPageRoute(
      builder:(context) => ErrorPage(),
      ),
      );
    }
  }

    return Scaffold(
      body: SafeArea(
        bottom: false,
    child: Stack(
    children: [
      Image.network(
         space.imageUrl,
      width: MediaQuery.of(context).size.width,
        height: 350,
        fit: BoxFit.cover,
      ),

      ListView(

children: [
  SizedBox(height: 320,

  ),
  Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20)
      ),
      color: whiteColor,
    ),
    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 1,
        ),
        Padding(padding: EdgeInsets.symmetric(
    horizontal: edge,
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pondok Cibeber 1',
            style: blackTextStyle.copyWith(
              fontSize: 22,
            ),
          ),
              Text.rich(
                TextSpan(
                    text: '\$52',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' / Bulan',
                      ),
                            ],
                          ),
                         ),
                       ],
                     ),
              Row(
children: [
  Image.asset('assets/star.png',
    width: 22,

  ),
],
              ),
              Image.asset('assets/star.png',
                width: 22,
              ),
              Image.asset('assets/star.png',
                width: 22,
              ),
              Image.asset('assets/star.png',
                width: 22,
              ),
              Image.asset('assets/star.png',
                width: 22,
                color: Color(0xff9898a1),
              ),
                   ],
                  ),
                  ),
        SizedBox(
          height: 22,
        ),
        Padding(padding: EdgeInsets.only(left: edge),
          child: Text('Fasilitas Kosan',
            style: regulerTextStyle.copyWith(
              fontSize: 16,

                     ),
                    ),
                  ),
        SizedBox(
          height: 20,
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: edge

        ),
          child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Facilities(
                imageUrl: 'assets/item_dapur1.png',
                name: 'Meja Belajar ',
                total: 2,
              ),
              Facilities(
                imageUrl: 'assets/item_kamar1.png',
                name: 'Kamar mandi  ',
                total: 3,
              ),
              Facilities(
                imageUrl: 'assets/item_lemari1.png',
                name: 'Lemari',
                total: 1,
              ),
            ],
          ),

        ),
        SizedBox(
          height: 15,
        ),
        Padding(padding: EdgeInsets.only(left: edge),
        child: Text(
          'Photos',
          style: regulerTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 88,
            child:ListView(
              scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: edge,
            ),
            Image.asset('assets/gambar_kamar1.png',
              width: 110,
              height: 77,
              fit:BoxFit.cover,
                  ),
            SizedBox(width: 18,),
            Image.asset('assets/gambar_kamar_mandi.png',
              width: 110,
              height: 77,
              fit:BoxFit.cover,
            ),
            SizedBox(width: 15,),
            Image.asset('assets/gambar_ruangtamu.png',
              width: 110,
              height: 77,
              fit:BoxFit.cover,
            ),

                 ],
               ),
              ),
      ],
           ),

  ),
  SizedBox(
    height: 20,

  ),
  Padding(padding: EdgeInsets.only(left: edge),
    child: Text(
      'Lokasi',
      style: regulerTextStyle.copyWith(
        fontSize: 16,
      ),
    ),
  ),
  SizedBox(
    height: 6,
  ),
  Padding(padding: EdgeInsets.symmetric(
horizontal: edge,

  ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Jln Cibeber Cimahi Selatan No 9',
        style: greyTextStyle.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
    ),
          InkWell(
            onTap: (){
              //_launchUrl('https://goo.gl/maps/2FxcYYYjsn5Yyxmj8');
        _launchUrl('erorreuy');
          },
            child: Image.asset('assets/btn_wishlist2.png',
              width: 46,
            ),
          ),
      ],
    ),

  ),
  SizedBox(
    height: 20,
  ),
  Container(
    margin: EdgeInsets.symmetric(
      horizontal: edge,
    ),
    height: 50,
    width: MediaQuery.of(context).size.width-(2*edge),

    child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

ElevatedButton(  onPressed: (){
  _launchUrl('tel://081395515375');


},

    child: Text('Pesan Sekarang'),

  style: ElevatedButton.styleFrom(
    primary: Colors.purple,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
      side: BorderSide(
        color: Colors.teal,
        width: 1.0,
      ),

    ),
  ),
),
      ],


    ),

    ),

  SizedBox(
    height: 20,
  )
         ],
       ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: edge,
          vertical: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:
              Image.asset('assets/arrow.png',
                width: 35,
              ),
            ),
            Image.asset('assets/btn_wishlist.png',
              width: 35,
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