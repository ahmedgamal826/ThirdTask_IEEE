import 'package:flutter/material.dart';

import 'list_view_horizontal.dart';
import 'list_view_vertical.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'NewsApp',
          style: TextStyle(
              fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.orange,
          )
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 100),
            child: Text(
              'Breaking News',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListViewHorizontal(txt: 'coffee'),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 140),
            child: Text(
              'Recent News',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListViewVertical(
            txt: 'Fakdvsvg Dbnshg',
            txt2: 'Gshhdbd Fsjshgd',
            txt3: 'Mjkhnshhd Svsgd',
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child:
              BottomNavigationBar(backgroundColor: Colors.black, items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.save,
                  color: Colors.white,
                  size: 30,
                ),
                label: '')
          ]),
        ),
      ),
    );
  }
}
