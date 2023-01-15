import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuRowPages extends StatelessWidget {
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

  MenuRowPages(menuRow);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _MenuWiget(menuRow: pagesRow),
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
