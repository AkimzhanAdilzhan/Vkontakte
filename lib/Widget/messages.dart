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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _MsgChats(),
    );
  }
}

class _MsgChats extends StatelessWidget {
  const _MsgChats({super.key});

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
