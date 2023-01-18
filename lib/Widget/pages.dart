//import 'dart:html';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_com/Widget/images.dart';
import 'package:vk_com/Widget/menu_row.dart';

class PagesVk extends StatefulWidget {
  @override
  State<PagesVk> createState() => _PagesVkState();
}

class _PagesVkState extends State<PagesVk> {
  List<MenuRowData> pagesRow = [
    MenuRowData(Icons.person, 'Друзья'),
    MenuRowData(Icons.person_add, 'Сообщества'),
    MenuRowData(Icons.recommend, 'Рекомендации'),
    MenuRowData(Icons.photo, 'Фотографии'),
    MenuRowData(Icons.video_call, 'Видео'),
    MenuRowData(Icons.music_note, 'Музыка'),
    MenuRowData(Icons.favorite, 'Закладки'),
    MenuRowData(Icons.favorite_border, 'Реакции'),
    MenuRowData(Icons.payment, 'VK Pay'),
    MenuRowData(Icons.room_service, 'Сервисы'),
    MenuRowData(Icons.games, 'Игры'),
    MenuRowData(Icons.file_copy, 'Файлы'),
    MenuRowData(Icons.lock_clock, 'Реклама'),
    MenuRowData(Icons.money, 'Денежные переводы'),
    MenuRowData(Icons.help, 'Помощь'),
  ];

  List<MenuRowData> pagesRowDown = [
    MenuRowData(Icons.settings, 'Еще'),
    MenuRowData(Icons.laptop, 'Версия для компьютера'),
    MenuRowData(Icons.view_kanban, 'Открыть в приложении'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            child: Column(
              children: [
                // Image.asset("images/ex.jpg"),
                _AppBar(),
                _UserProfileItemRow(),

                _MenuWiget(menuRow: pagesRow),

                _MainMenuMore(),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: 363,
                ),
                _PadHeaderRow(),
                _SliderLine(),
                Container(
                  color: Colors.grey,
                  height: 1,
                  width: 363,
                ),
                _PadHeaderGameRow(),
                _GameSliderLine(),

                _MenuWiget(menuRow: pagesRowDown),
              ],
            ),
          ),
        ],
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Text(
              'Еще',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(14, 4, 14, 0),
            child: Icon(
              size: 28,
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;
  MenuRowData(this.icon, this.text);
}

class _MenuWiget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWiget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWigetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWigetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWigetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(
            size: 28,
            data.icon,
            color: Color.fromARGB(232, 29, 148, 245),
          ),
          SizedBox(width: 15),
          Text(
            data.text,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class _UserProfileItemRow extends StatefulWidget {
  const _UserProfileItemRow({super.key});

  @override
  State<_UserProfileItemRow> createState() => _UserProfileItemRowState();
}

class _UserProfileItemRowState extends State<_UserProfileItemRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(223, 44, 44, 44)),

      // color: Color.fromARGB(223, 44, 44, 44),
      height: 68,
      width: 369,

      //padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('images/avatar.jpg'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  height: 44,
                  width: 286,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                        child: Text(
                          'Akimzhan Kurbanov',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Перейти в профиль',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _MainMenuMore extends StatelessWidget {
  const _MainMenuMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(
            size: 28,
            Icons.arrow_drop_down,
            color: Color.fromARGB(232, 29, 148, 245),
          ),
          SizedBox(width: 15),
          Text(
            'Ещё',
            style: TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _PadHeaderRow extends StatefulWidget {
  const _PadHeaderRow({super.key});

  @override
  State<_PadHeaderRow> createState() => _PadHeaderRowState();
}

class _PadHeaderRowState extends State<_PadHeaderRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
      child: Container(
        // padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'МИНИ-ПРИЛОЖЕНИЯ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Text(
              'Показать все',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
              ),
            ),
          ],
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
  List<SliderRowData> slidergamedata = [
    SliderRowData('images/ex.jpg', 'g'),
    SliderRowData('images/ex.jpg', 'q'),
    SliderRowData('images/ex.jpg', 'e'),
    SliderRowData('images/ex.jpg', 'g'),
    SliderRowData('images/ex.jpg', 'h'),
    SliderRowData('images/ex.jpg', 'hj'),
    SliderRowData('images/ex.jpg', 'jhjh'),
    SliderRowData('images/ex.jpg', 'hhh'),
    SliderRowData('images/ex.jpg', 'jjj'),
    SliderRowData('images/ex.jpg', 'vvv'),
    SliderRowData('images/ex.jpg', 'nbng'),
    SliderRowData('images/ex.jpg', 'vvn'),
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
          children: [
            _SliderWiget(sliderRow: slidergamedata),
          ],
        )),
      ),
    );
  }
}

class _PadHeaderGameRow extends StatefulWidget {
  const _PadHeaderGameRow({super.key});

  @override
  State<_PadHeaderGameRow> createState() => _PadHeaderGameRowState();
}

class _PadHeaderGameRowState extends State<_PadHeaderGameRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
      child: Container(
        // padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'ИГРЫ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Text(
              'Показать все',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GameSliderLine extends StatefulWidget {
  const _GameSliderLine({super.key});

  @override
  State<_GameSliderLine> createState() => _GameSliderLineState();
}

class _GameSliderLineState extends State<_GameSliderLine> {
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
      padding: EdgeInsets.fromLTRB(12, 4, 4, 0),
      height: 106,
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
            margin: EdgeInsets.all(1),
            width: 56,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(data.img), fit: BoxFit.cover)),
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
