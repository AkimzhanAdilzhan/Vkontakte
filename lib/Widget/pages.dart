//import 'dart:html';
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
                _AppBar(),
                _UserProfileItemRow(),
                _MenuWiget(menuRow: pagesRow),
                _MainMenuMore(),
                _PadHeaderRow(),
                _SliderLine(),
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
      height: 68,
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                size: 44,
                Icons.person,
                color: Colors.white,
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
            'Еще',
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
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'SuperUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GeoPuzzle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Geolab',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GGPW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GGPW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GGPW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GGPW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'GGPW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 4, 4, 0),
      child: Container(
        //padding: EdgeInsets.fromLTRB(12, 4, 4, 0),
        height: 106,
        child: (ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Маленький...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'День сур...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Слияние...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Хватай за...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Арканоид',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Бегу...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Новый орлеан',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.abc,
                  color: Colors.white,
                  size: 56,
                ),
                Text(
                  'Дайджест',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
