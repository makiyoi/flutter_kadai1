
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/newPage.dart';
//import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 課題1',
      theme: ThemeData(

        //appBarTheme: AppBarTheme(
          //color: Colors.black,
         //Image.asset('assets/kuroneko.jpg',) //primarySwatch: Colors.grey,
      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           extendBodyBehindAppBar: true,
           appBar: AppBar(
             elevation: 0,
             backgroundColor: Colors.transparent,
              actions: [
                Icon(Icons.share,size:30,color: Colors.white,),
                SizedBox(width:20),
                 Icon(Icons.favorite_border,size: 30,color: Colors.white,),
                SizedBox(width:20),
               ],
              ),
           body: Column(
             children: [
                 Stack (
                   children:[
                     ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                      child: Image.asset('assets/kuroneko.jpg',width: 500,height: 280,
                       fit: BoxFit.cover),
                      ),

                     Container(
                         // alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(left: 15,top: 150,),
                          child:
                      Column(
                         children:[
                           Row(
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 30,)),
                           Text
                             ('Japan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ]
                           ),
                          Row(
                            children:[
                              Padding(padding: EdgeInsets.only(bottom: 40,)),
                              Icon(Icons.location_on,size: 20,color: Colors.white,),

                              Text('田舎',style: TextStyle(fontSize: 15,color: Colors.white),),
                            ],
                          ),
                          Row(
                            children:[
                              Icon(Icons.star,size: 20,color: Colors.white,),
                              Icon(Icons.star,size: 20,color: Colors.white,),
                              Icon(Icons.star,size: 20,color: Colors.white,),
                              Icon(Icons.star,size: 20,color: Colors.white,),
                              Icon(Icons.star_half,size: 20,color: Colors.white,),
                              Text('4.5',style: TextStyle(color: Colors.white)),
                       ],
                      ),
                     ],
                      ),
                     ),
                    ],
                 ),
              SizedBox(height: 15,),

               Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Column (
                   children:[
                  Container(
                    child:Icon(Icons.home,size: 30,),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  border: Border.all(
                   color: Colors.black,
                   width: 1,),
                   borderRadius: BorderRadius.circular(7),),
                   ),
                  SizedBox(width: 100,height: 5,),
                  Text('HOME'),
                   ]
                   ),
                  Column(
                   children: [
                  Container(
                   child:Icon(Icons.image_search,size: 30,),
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                   border: Border.all(
                   color: Colors.black,
                   width: 1,),
                   borderRadius: BorderRadius.circular(7),),
                   ),
                  SizedBox(width: 100,height: 5,),
                  Text('検索'),
                   ]
                   ),
                  Column(
                    children: [
                   Container(
                    child:Icon(Icons.add_a_photo_outlined,size: 30,),
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     border: Border.all(
                     color: Colors.black,
                        width: 1,),
                      borderRadius: BorderRadius.circular(7),),
                  ),
                   SizedBox(width: 100,height: 5,),
                   Text('CAMERA'),
                    ],
                  ),
                  Column(
                    children: [
                   Container(
                    child:Icon(Icons.sunny,size: 30,),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.black,
                        width: 1,),
                     borderRadius: BorderRadius.circular(7),),
                    ),
                   SizedBox(width: 100,height: 5,),
                   Text('天気'),
                  ],
                  ),
                 ],
               ),
             Padding(
               padding: EdgeInsets.only(left:10,top: 10,right: 400,bottom: 5),
               child: (
                 Text('詳細',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children:[
                Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                 height: 250,width: 430,
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.circular(20)
                  ),
                  child: (
                   Text('5年前､お母さん猫と､二匹の姉妹と田舎の町で暮らしていました｡'
                   '野良猫だったので近所の人と､保護猫活動をされている人達が保護しようと'
                    'しましたが､お母さん猫は保護できませんでした｡'
                    '保護された3匹の子猫たちは､ミルクボランティアさんのところに預けられすくすくと成長し､'
                    '保護猫カフェで家族になってくれる人を待っていました｡2匹の姉妹はすぐに里親さんが決まりましたが､1匹の子猫はずっと待ち続けました｡'
                    'この話はまた次回に｡' ,
                     style: TextStyle(fontSize: 17,),)
                ),
                ),
               ]
             ),
             ]
           ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton.extended(
                onPressed:(){},
                label: Text( 'もふもふ部に入会',),
                backgroundColor: Colors.grey,),
    );
  }
}