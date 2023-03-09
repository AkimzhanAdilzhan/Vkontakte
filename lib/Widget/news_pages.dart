import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsPagesWidget extends StatefulWidget {
  const NewsPagesWidget({super.key});

  @override
  State<NewsPagesWidget> createState() => _NewsPagesWidgetState();
}

class _NewsPagesWidgetState extends State<NewsPagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            AppAndPost(),
            SizedBox(
              height: 10,
            ),
            _SliderLine(),
             SizedBox(
              height: 10,),
              _PostWidgetColumn(),
              SizedBox(
              height: 10,),
              _PostWidgetColumn(),
              SizedBox(
              height: 10,),
              _PostWidgetColumn(),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
        child: Row(
          children: [
            Text(
              'Новости',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Container(
              child: Icon(
                size: 28,
                Icons.arrow_drop_down,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NewPostWidget extends StatefulWidget {
  const _NewPostWidget({super.key});

  @override
  State<_NewPostWidget> createState() => _NewPostWidgetState();
}

class _NewPostWidgetState extends State<_NewPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/ex.jpg'),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 272,
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(8)),
                    labelText: 'Напишите что-нибудь...',
                    filled: true,
                    fillColor: Color.fromARGB(255, 59, 59, 59),
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          Icon(
            Icons.add_a_photo,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class _SliderLine extends StatefulWidget {
  const _SliderLine({super.key});

  @override
  State<_SliderLine> createState() => _SliderLineState();
}

class _SliderLineState extends State<_SliderLine> {
  List<SliderRowData> sliderdata = [
    SliderRowData('images/ex.jpg', 'Первая'),
    SliderRowData('images/ex.jpg', 'Вторая'),
    SliderRowData('images/ex.jpg', 'Третья'),
    SliderRowData('images/ex.jpg', '4'),
    SliderRowData('images/ex.jpg', '5'),
    SliderRowData('images/ex.jpg', '6'),
    SliderRowData('images/ex.jpg', '7'),
    SliderRowData('images/ex.jpg', '8'),
    SliderRowData('images/ex.jpg', '9'),
    SliderRowData('images/ex.jpg', '10'),
    SliderRowData('images/ex.jpg', '11'),
    SliderRowData('images/ex.jpg', '12'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(223, 44, 44, 44)),
      height: 106,
      padding: EdgeInsets.fromLTRB(12, 4, 4, 0),
      child: (ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _SliderWiget(sliderRow: sliderdata),
        ],
      )),
    );
  }
}

class SliderRowData {
  final String img;
  final String text;

  SliderRowData(this.img, this.text);
}

class _SliderWiget extends StatelessWidget {
  final List<SliderRowData> sliderRow;
  const _SliderWiget({
    Key? key,
    required this.sliderRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: sliderRow.map((data) => _SliderWigetRow(data: data)).toList(),
      ),
    );
  }
}

class _SliderWigetRow extends StatelessWidget {
  final SliderRowData data;
  const _SliderWigetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
               radius: 30,
              backgroundImage: AssetImage(data.img),
            ),
          ),
          Container(
            child: Text(
              data.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppAndPost extends StatelessWidget {
  const AppAndPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: Color.fromARGB(223, 44, 44, 44)),
      child: Column(
        children: [
          _AppBar(),
          _NewPostWidget(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}


// class _PostWidget extends StatefulWidget {
//   const _PostWidget({super.key});

//   @override
//   State<_PostWidget> createState() => _PostWidgetState();
// }

// class _PostWidgetState extends State<_PostWidget> {
//  List<PostWidgetData> postdata = [
//   PostWidgetData('dsfsdf','sdfsfd','sdfsdfsfd',Icons.more,'images/cmt.jpg', 'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'images/cmt.jpg', 
// ),
//  PostWidgetData('dsfsdf','sdfsfd','sdfsdfsfd',Icons.more,'images/cmt.jpg', 'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'sfsdfs', Icons.linked_camera,'images/cmt.jpg', 
// ),
//  ];
 
 
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//        child: ListView(
//          children: [
//           _PostWidge(postcolumn: postdata),
//           ],
//        ),
//     );
//   }
// }


// class PostWidgetData {
//   final String text1;
//   final String text2;
//   final String text3;
//   final IconData iconmore;
//   final String avatar;
//   final String img;
//   final String textlike;
//   final IconData iconlike;
//   final String textrepost;
//   final IconData iconrepost;
//   final String textcomment;
//   final IconData iconcomment;
//   final String textview;
//   final IconData iconview;
// PostWidgetData(this.text1, this.text2, this.text3, this.iconmore, this.img, this.textlike, this.iconlike, this.textcomment, this.iconcomment, this.textrepost, this.iconrepost, this.textview, this.iconview, this.avatar,);

// }

// class _PostWidge extends StatelessWidget {
//  final List<PostWidgetData> postcolumn;
//   const _PostWidge({
//     Key? key,
//     required this.postcolumn,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: Column(
//                 children:  postcolumn.map((data) => _PostWidgetColumn(data: data)).toList(),
//       ),
//     );
//   }
// }


// class _PostWidgetColumn extends StatelessWidget {
// final PostWidgetData data;
//   const _PostWidgetColumn({
//     Key? key,
//     required this.data,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 350,
//        decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(20),
//        color: Color.fromARGB(223, 44, 44, 44)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                          Container(
//                           padding: EdgeInsets.all(12),
//                            child: Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
//                                children: [
//                                Row(
//                                  children: [
//                                    CircleAvatar(
//                                    backgroundImage: AssetImage('images/ex.jpg'),),
//                                    SizedBox(width: 10,),
//                                          Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                                          Text('data.text1', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
//                                                          Text('data.text2',style: TextStyle(color: Colors.white, fontSize: 14,),),
//                                                               ],),
//                                  ],
//                                ),
                               
//                                          Icon(Icons.more,
//                                          color: Colors.white,
//                                          size: 14,),
// ],
//                                                   ),
//                          ),
//                             Container(
//                               padding: EdgeInsets.all(8),
//                               child: Text('data.text3 dfsdfs sfdfs sdf sdf sdf sdf sdf sd f  sdf s  sdfsdf sfdfsdfsfd', style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                             Image.asset('images/ex.jpg',
//                             height: 290,),
//                             SizedBox(height: 8,),
//                             Container(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     children: [
//                                     Container(
//                                       padding: EdgeInsets.all(8),
//                                       decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.linked_camera, color: Colors.white, size: 16,),
//                                           SizedBox(width: 5,),
//                                           Text('4,6k', style: TextStyle(color: Colors.white, fontSize: 14),),
//                                         ],
//                                       ),                              
//                                     ),
//                                     SizedBox(width: 5,),

//                                     Container(
//                                        padding: EdgeInsets.all(8),
//                                       decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.comment,color: Colors.white, size: 16),
//                                           SizedBox(width: 5,),
//                                           Text('78',style: TextStyle(color: Colors.white, fontSize: 14)),
//                                         ],
//                                       ),                              
//                                     ),
//                                     Container(
//                                        padding: EdgeInsets.all(8),
//                                       decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(30)),
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.report_sharp,color: Colors.white, size: 16),
//                                          SizedBox(width: 5,),
//                                           Text('45', style: TextStyle(color: Colors.white, fontSize: 14),),
//                                         ],
//                                       ),                              
//                                     ),
//                                     ],
//                                                                    ),
//                                     Container(
//                                       child: Row(
//                                         children: [
//                                           Icon(Icons.view_agenda,color: Colors.white, size: 16),
//                                           SizedBox(width: 5,),
//                                           Text('1111', style: TextStyle(color: Colors.white, fontSize: 14),),
//                                         ],
//                                       ),                              
//                                     ),
//                                 ],
//                               ),
//                             ),
                            
//                           ],
//                          ), 
//     );



class _PostWidgetColumn extends StatelessWidget {
  const _PostWidgetColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 450,
       decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       color: Color.fromARGB(223, 44, 44, 44)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                         Container(
                          padding: EdgeInsets.all(12),
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,                            
                               children: [
                               Row(
                                 children: [
                                   CircleAvatar(
                                   backgroundImage: AssetImage('images/ex.jpg'),),
                                   SizedBox(width: 10,),
                                         Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                                         Text('ФК Барселона & FC Barcelona', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                                                         Text('вчера в 11:01',style: TextStyle(color: Colors.grey, fontSize: 12,),),
                                                              ],),
                                 ],
                               ),
                               
                                         Icon(Icons.more,
                                         color: Colors.white,
                                         size: 14,),
],
                                                  ),
                         ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Text('data.text3 dfsdfs sfdfs sdf sdf sdf sdf sdf sd f  sdf s  sdfsdf sfdfsdfsfd', style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Image.asset('images/ex.jpg',
                            height: 290,),
                            SizedBox(height: 8,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(color: Color.fromARGB(255, 80, 79, 79), borderRadius: BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.linked_camera, color: Colors.grey, size: 16,),
                                          SizedBox(width: 5,),
                                          Text('4,6k', style: TextStyle(color: Colors.grey, fontSize: 14),),
                                        ],
                                      ),                              
                                    ),
                                    SizedBox(width: 5,),

                                    Container(
                                       padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(color: Color.fromARGB(255, 80, 79, 79), borderRadius: BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.comment,color: Colors.grey, size: 16),
                                          SizedBox(width: 5,),
                                          Text('78',style: TextStyle(color: Colors.grey, fontSize: 14)),
                                        ],
                                      ),                              
                                    ),
                                                                        SizedBox(width: 5,),

                                    Container(
                                       padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(color: Color.fromARGB(255, 80, 79, 79), borderRadius: BorderRadius.circular(30)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.report_sharp,color: Colors.grey, size: 16),
                                         SizedBox(width: 5,),
                                          Text('45', style: TextStyle(color: Colors.grey, fontSize: 14),),
                                        ],
                                      ),                              
                                    ),
                                    ],
                                                                   ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.view_agenda,color: Colors.grey, size: 16),
                                          SizedBox(width: 5,),
                                          Text('1111', style: TextStyle(color: Colors.grey, fontSize: 14),),
                                        ],
                                      ),                              
                                    ),
                                ],
                              ),
                            ),
                            
                          ],
                         ), 
    );
  }
}