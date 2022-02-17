import 'package:flutter/material.dart';
import 'package:flutter_basic/models/city.dart';
import 'package:flutter_basic/models/space.dart';
import 'package:flutter_basic/models/tips.dart';
import 'package:flutter_basic/pages/theme.dart';
import 'package:flutter_basic/providers/space_providers.dart';
import 'package:flutter_basic/widgets/bottom_navbar_item.dart';
import 'package:flutter_basic/widgets/city_card.dart';
import 'package:flutter_basic/widgets/space_card.dart';
import 'package:flutter_basic/widgets/tips_card.dart';
import 'package:provider/provider.dart';



 class HomePage extends StatelessWidget{





  @override
  Widget build(BuildContext context){

    var spaceProvider =  Provider.of<SpaceProvider>(context);
    spaceProvider.getRecommendedSpaces();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
        vertical: edge,
          ),

        child: ListView(
        children:[
          Padding(
            padding: EdgeInsets.only(left:edge),
        child:
        Text('Explore Sekarang', style: blackTextStyle.copyWith(
          fontSize: 24,
        ),
        ),
          ),
          SizedBox(
            height: 2,

          ),
          Padding(
            padding: EdgeInsets.only(left: edge),
            child: Text('Mencari kosan sekarang',

            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
            ),

          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                CityCard(
                  City (
                    id:1,
                    name: 'Jakarta',
                    imageUrl:'assets/space1.png',
                    isPopular: false,
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
                CityCard(
                  City (
                    id:2,
                    name: 'Cimahi',
                    imageUrl:'assets/city2.png',
                    isPopular: true,
                  ),
                ),

                SizedBox(
                  width: 24,
                ),
                CityCard(
                  City (
                    id:3,
                    name: 'Bogor',
                    imageUrl:'assets/city1.png',
                    isPopular: false,
                    ),
                  ),
                SizedBox(
                  width: 24,
                ),
                ],
            ),
          ),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(right: edge),
                  child: Text('Pilihlah Kosan Sesuai keinginan mu !!',
                    style: regulerTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
          SizedBox(
            height: 16,

          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge
            ),
            child:
 FutureBuilder(
   future: spaceProvider.getRecommendedSpaces(),

   builder: (context, snapshot){
     if(snapshot.hasData){
  List<Space>? data= snapshot.data! as List<Space>?;


  int index = 0;

     return Column(
children: data!.map((item) {
index++;
return Container(
  margin: EdgeInsets.only(
    top: index == 1 ?0 :30,
  ),
child: SpaceCard(item),
);
    }).toList(),

     );
     }
     return Center(
       child: CircularProgressIndicator(),

     );
   },
 ),
          ),

          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left:edge),
            child:
            Text('Tips Memilih Kosan yang baik', style: blackTextStyle.copyWith(
              fontSize: 20,
                 ),
                ),
              ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
            ),

            child: Column(
              children: [
                TipsCard(
                  Tips(
                    id:1,
                    title: 'Kota Majalengka ',
                    imageUrl: 'assets/tips1.jpg',
                      updateAt:'20 may',
                  ),
                ),
                SizedBox(

                  height: 30,
                ),
                TipsCard(
                  Tips(id: 2,
                      imageUrl: 'assets/tips1.jpg',
                      title: 'Kota bogor',
                      updateAt: '30 Desember'
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width - (2 * edge),
            margin: EdgeInsets.symmetric(
              horizontal: edge,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF6f7f8),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/icon1.png',
                isActive: true,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/icon2.png',
                isActive: false,
              ),

              BottomNavbarItem(
                imageUrl: 'assets/icon3.png',
                isActive: false,
              ),

              BottomNavbarItem(
                imageUrl: 'assets/icon4.png',
                isActive: false,
              ),

            ],
            ),
          ),

              ],
            ),
          ),
      ),
    );
  }
}