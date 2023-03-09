import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotifCommentWidget extends StatefulWidget {
  const NotifCommentWidget({super.key});

  @override
  State<NotifCommentWidget> createState() => _NotifCommentWidgetState();
}

class _NotifCommentWidgetState extends State<NotifCommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            _AppBarWidget(),
            SizedBox(height: 10,),
            // _NotificationWidget(),
            _CommentWidget(),
             
          ],
        ),
      ),
      
    );
  }
}


class _AppBarWidget extends StatefulWidget {
  const _AppBarWidget({super.key});

  @override
  State<_AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<_AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      Icon(Icons.chevron_left, color: Colors.blue, size: 30,),
      Text("Уведомления", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
      Text("Комментарии",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),   
      Icon(Icons.settings_outlined, color: Colors.blue,),
    
      ],
      ),
    );
  }
}



class _NotificationWidget extends StatefulWidget {
  const _NotificationWidget({super.key});

  @override
  State<_NotificationWidget> createState() => __NotificationWidgetState();
}

class __NotificationWidgetState extends State<_NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("2 НОВЫХ УВЕДОМЛЕНИЯ", style: TextStyle(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.bold,),),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Вчера был день рождения',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('Багжана Кабдыгалиева',style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 209, 208, 208), borderRadius: BorderRadius.circular(10)),
                  child: Text('Поздравить в истории', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 209, 208, 208), borderRadius: BorderRadius.circular(10)),
                  child: Text('Отправить подарок', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),),
                )
                
              ],
            )
          ],
        ),
         SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Новый рекомендованный друг',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('У вас 1 общий друг',style: TextStyle(color: Colors.white, ),),
                Text('3 фев. в 21:55',style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 209, 208, 208), borderRadius: BorderRadius.circular(10)),
                  child: Text('Добавить в друзья', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),),
                ),
               
              ],
            )
          ],
        ),
      SizedBox(height: 20,),
      Container(
                  width: 350,
                  height: 1,
                  color: Colors.grey,
                ),
         SizedBox(height: 20,),

        Text("ПРОСМОТРЕННЫЕ", style: TextStyle(color: Colors.grey,fontSize: 14, fontWeight: FontWeight.bold,),),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Новый рекомендованный друг',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('У вас 1 общий друг',style: TextStyle(color: Colors.white, ),),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(color: Color.fromARGB(255, 209, 208, 208), borderRadius: BorderRadius.circular(10)),
                  child: Text('Добавить в друзья', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),),
                ),
                             
              ],
            )
          ],
        ),
        SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Совершен вход в ваш аккаунт Akim ',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('kurbanov 24 янв. в 15:18 через сайт',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('"ВКонтакте", Алматы. Если это не вы,',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('срочно смените пароль',style: TextStyle(color: Colors.white, fontSize: 14),),               
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                  child: Text('Сменить пароль', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
                ),
                               
              ],
            )
          ],
        ),
      SizedBox(height: 20,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Лента упоминаний ',style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),), 
                Text('Нажмите, чтобы псмотреть все записи, где',style: TextStyle(color: Colors.white, fontSize: 14),), 
                Text('вы были упомянуты,',style: TextStyle(color: Colors.white, fontSize: 14),),                            
              ],
            )
          ],
        ),



        ],
        
      ),
    );
  }
}

class _CommentWidget extends StatefulWidget {
  const _CommentWidget({super.key});

  @override
  State<_CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<_CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          
          
          //////////////////////////////////////////////////////
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                  CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),), 
                  SizedBox(width: 10,),
                  Text('Students Stories АУЭС', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              ],),
              Row(children: [
                  Icon(Icons.settings, color: Colors.white,)
              ],),
            ],
          ),
         //////////////////////////////////////////////////////
        SizedBox(height: 12,),
        
        //////////////////////////////////////////////////////
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: AssetImage('images/ex.jpg'),), 
              SizedBox(width: 10,),
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Students Stories АУЭС', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                
                  Text('Students Stories АУЭС dfhsd eccrcefcrfc'
                  , style: TextStyle(color: Colors.white, fontSize: 14,),
                  
                    ),
                ]
                ,
              ),
              
            ],
          ),        
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   ]

        ,
      ),
    );
  }
}