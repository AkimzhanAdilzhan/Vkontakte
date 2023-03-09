import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearcPageWidget extends StatefulWidget {
  const SearcPageWidget({super.key});

  @override
  State<SearcPageWidget> createState() => _SearcPageWidgetState();
}

class _SearcPageWidgetState extends State<SearcPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: ListView(
        children: [
          Appbar(),
          SizedBox(height: 10,),
          WidgetsThree(),
                    SizedBox(height: 10,),

          Services(),
        ],
      )
    );
  }
}


class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/avatar.jpg'), radius: 13,),
            SizedBox(width:20 ,),
            Text('Сервисы', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)
          ],
    ),
    Row(
      children: [Icon(Icons.search,color: Colors.white,size: 30,),
                SizedBox(width: 20,),
                Icon(Icons.line_weight,color: Colors.white,size: 30,)],
  )
        ],
      ),);
  }
}

class WidgetsThree extends StatefulWidget {
  const WidgetsThree({super.key});

  @override
  State<WidgetsThree> createState() => _WidgetsThreeState();
}

class _WidgetsThreeState extends State<WidgetsThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(12, 12, 65, 12),
            decoration: BoxDecoration(color: Color.fromARGB(255, 53, 53, 53), borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('День',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 12),),
                Text('рождения',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 12)),
                Text('У уалихана',style: TextStyle(color: Colors.grey, fontSize: 10)),
              ],
            ),
            ),


          Container(
            padding: EdgeInsets.fromLTRB(12, 12, 65, 12),
            decoration: BoxDecoration(color: Color.fromARGB(255, 53, 53, 53), borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('-2',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 12),),
                Text('ночью -7',style: TextStyle(color: Colors.grey, fontSize: 10)),
                Text('утром -6',style: TextStyle(color: Colors.grey, fontSize: 10)),
              ],
            ),            
          ),


 Container(
            padding: EdgeInsets.fromLTRB(12, 12, 65, 12),
            decoration: BoxDecoration(color: Color.fromARGB(255, 53, 53, 53), borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Спросите',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 12),),
                Text('Марусю',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 12),),
                SizedBox(height: 12,)
              ],
            ),            
          ),
        ],
      ),
    );
  }
}



class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:  Color.fromARGB(255, 53, 53, 53),borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
           children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(            
                  children: [
                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.orange,size: 50,),
                        Text('Друзья',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.green,size: 50),
                        Text('Игры',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
                
               Column(            
                  children: [
                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.yellow,size: 50),
                        Text('Сообщества',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.yellow,size: 50),
                        Text('Стикеры',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),
                  ],
                ),

                Column(            
                  children: [
                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.pink,size: 50),
                        Text('Музыка',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.blue,size: 50),
                        Text('Шаги',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),
                  ],
                ),

              Column(            
                  children: [
                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.blue,size: 50),
                        Text('Маркет',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),

                    Column(
                      children: [
                        Icon(Icons.square, color: Colors.pink,size: 50),
                        Text('Знакомства',style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
               
                ],
            
            ),
            SizedBox(height: 10,),
            Container(height: 1, color: Colors.grey,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.square, color: Colors.white, size: 30,),
                    Text("Все сервисы", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
                  ],
                ),
                Row(children: [
                  Icon(Icons.chevron_right, color: Colors.white, size: 20,)
                ],)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ForYou extends StatefulWidget {
  const _ForYou({super.key});

  @override
  State<_ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<_ForYou> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}