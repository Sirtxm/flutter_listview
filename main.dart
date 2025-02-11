import 'package:flutter/material.dart';

void main() => runApp(ListView01());

class ListView01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: HomePage(),
  );
}

class HomePage extends StatelessWidget{
  var items = ['วันจันทร์', 'วันอังคาร', 'วันพุธ', 'วันพฤหัสบดี', 'วันศุกร์', 'วันเสาร์', 'วันอาทิตย์'];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('ListView01'),),
    body: ListView(
      padding: EdgeInsets.symmetric(
        vertical: 25, horizontal: 5
      ),
      itemExtent: 80,
      children: listViewChildren(),
    ),
  );

//--1 สร้าง index -------------------------------------------------------
List<Widget> listViewChildren() =>
  List.generate(items.length, (index) => listItem(items[index]));

//--2 เพิ่ม item --------------------------------------------------------
Widget listItem(String text) => Container(
  padding: EdgeInsets.all(4),
  margin: EdgeInsets.all(5),
  alignment: Alignment.centerLeft,
  decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10)
  ),
  child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, textScaleFactor: 1.5,),
            Icon(Icons.arrow_forward_ios)
          ],
  ),
  );

}