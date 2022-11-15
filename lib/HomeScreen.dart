import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/Icon.dart';
import 'Model.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('The Main'),
        centerTitle: true,
          leading: Container(
            height: 10,
              width: 30,
              child: Image.asset('assets/icons/icons8-mail-24.png',color: Colors.white,)),
        actions: [
          Image.asset('assets/icons/icons8-logout-32.png',color: Colors.white,)
        ],

      ),
      body: SingleChildScrollView(
        child: media==Orientation.portrait?portrait():LandScape()
      ),
    );
  }
  Widget portrait()=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        CarouselSlider(
            items: Book.getCommonBooks().map((e) =>

                Image.asset('${e.image}',fit: BoxFit.cover,),).toList(),
            options: CarouselOptions(
                initialPage: 0,
                height: 250,
                autoPlay: true,
                reverse: false,
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayInterval: Duration(seconds: 3),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                enableInfiniteScroll: true,
                viewportFraction: 1.0
            )
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-diary-50.png',)
                  ),
                  Spacer(),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-law-book-100.png',)
                  ),



                ],
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-open-book-50.png',)
                  ),
                  Spacer(),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-story-book-48.png',)
                  ),



                ],
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-32.png',)
                  ),
                  Spacer(),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-50.png',)
                  ),



                ],
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-100.png',)
                  ),
                  Spacer(),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-informatics-book-50.png',)
                  ),



                ],
              ),
              SizedBox(height: 20,),

              Center(
                child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey
                    ),
                    child: Image.asset('assets/icons/icons8-law-book-80.png',)
                ),
              ),





            ],
          ),
        ),
      ],
    ),
  );
  Widget LandScape()=>Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        CarouselSlider(
            items: Book.getCommonBooks().map((e) =>

                Container(width:double.infinity,child: Image.asset('${e.image}',fit: BoxFit.cover,)),).toList(),
            options: CarouselOptions(
                initialPage: 0,
                height: 250,

                autoPlay: true,
                reverse: false,
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayInterval: Duration(seconds: 3),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                enableInfiniteScroll: true,
                viewportFraction: 1.0
            )
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-diary-50.png',)
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-law-book-100.png',)
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-open-book-50.png',)
                  ),



                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-story-book-48.png',)
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-32.png',)
                  ),

                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-50.png',)
                  ),


                ],
              ),
              SizedBox(height: 20,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-storytelling-100.png',)
                  ),

                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-informatics-book-50.png',)
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey
                      ),
                      child: Image.asset('assets/icons/icons8-law-book-80.png',)
                  ),


                ],
              ),






            ],
          ),
        ),
      ],
    ),
  );

}