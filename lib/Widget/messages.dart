import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MsgWidget extends StatefulWidget {
  const MsgWidget({super.key});

  @override
  State<MsgWidget> createState() => _MsgWidgetState();
}

class _MsgWidgetState extends State<MsgWidget> {
  List<MsgRowData> pagesRow = [
    MsgRowData('images/avatar.jpg', 'Друзья', 'Привет как дела?', '12 янв.'),
    MsgRowData(
        'images/avatar.jpg', 'Сообщества', 'Привет как дела?', '12 янв.'),
    MsgRowData(
        'images/avatar.jpg', 'Рекомендации', 'Привет как дела?', '12 янв.'),
    MsgRowData(
        'images/avatar.jpg', 'Фотографии', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Видео', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Музыка', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Закладки', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Реакции', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'VK Pay', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Сервисы', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Игры', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Файлы', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Реклама', 'Привет как дела?', '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Денежные переводы', 'Привет как дела?',
        '12 янв.'),
    MsgRowData('images/avatar.jpg', 'Помощь', 'Привет как дела?', '12 янв.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            child: _MsgChats(),
          ),
          _TextField(),
          _SliderLine(),
          Container(
            color: Colors.grey,
            height: 1,
            width: 363,
          ),
          _MsgWiget(menuRow: pagesRow),
        ],
      ),
    );
  }
}

class MsgRowData {
  final String img;
  final String text;
  final String msg;
  final String datatime;
  MsgRowData(this.img, this.text, this.msg, this.datatime);
}

class _MsgWiget extends StatelessWidget {
  final List<MsgRowData> menuRow;
  const _MsgWiget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MsgWigetRow(data: data)).toList(),
      ),
    );
  }
}

class _MsgWigetRow extends StatelessWidget {
  final MsgRowData data;
  const _MsgWigetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 380,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(data.img),
                ),
                Container(
                  height: 44,
                  // width: 286,
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.text,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        data.msg,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            data.datatime,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _MsgChats extends StatelessWidget {
  const _MsgChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Text(
              'Чаты',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              size: 28,
              Icons.arrow_drop_down,
              color: Color.fromARGB(232, 29, 148, 245),
            ),
            Expanded(child: Text(' ')),
            Icon(
              size: 28,
              Icons.edit,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class _TextField extends StatefulWidget {
  const _TextField({super.key});

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          prefixIcon: Icon(
            Icons.loupe,
            color: Colors.white,
            size: 16,
          ),
          labelText: 'Поиск',
          filled: true,
          fillColor: Color.fromARGB(255, 59, 59, 59),
          labelStyle: TextStyle(color: Colors.white, fontSize: 14),
        ),
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
  List<SliderRowData> slideronlinedata = [
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
    // final image = AssetImage('ex.jpg');

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 4, 4, 0),
      child: Container(
        //padding: EdgeInsets.fromLTRB(12, 4, 4, 0),
        height: 106,
        child: (ListView(
          scrollDirection: Axis.horizontal,
          children: [_SliderWiget(sliderRow: slideronlinedata)],
        )),
      ),
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
            width: 60,
            height: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                data.img,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
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
