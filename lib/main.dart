import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Building List View'),
          centerTitle: true,
        ),
        body: BodyListView(),
      ),
    );
  }
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: EdgeInsets.all(8),

    /// shrinkWrap: true,  Никогда Так не делай!!!!!
    scrollDirection: Axis.horizontal,
    itemExtent: 300, //ширина или высота в зависимости куда
    // прокуручивается от аксис хоризонтол строка выше
    //reverse: true, //обычный реверс
    children: [
      ListTile(
        title: Text('Sun'),
        subtitle: Text('Today Clear'),
        leading: Icon(Icons.wb_sunny),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Cloud'),
        subtitle: Text('Today Cloudy'),
        leading: Icon(Icons.wb_cloudy),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        title: Text('Snow'),
        subtitle: Text('Today Snow'),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.keyboard_arrow_right),
      )
    ],
  );
}
