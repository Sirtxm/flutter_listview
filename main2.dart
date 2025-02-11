import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(ListView02());

class ListView02 extends StatelessWidget{
  const ListView02({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: HomePage(),
  );
}

  class HomePage extends StatelessWidget{
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('ListView02'),),
      body: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20),
              children: buildListTiles(),
      ),
    );

}

List<Widget> buildListTiles(){
    var rnd = Random();
    var leadingIcons = [
          Icons.star, Icons.favorite, Icons.wifi,
          Icons.phone, Icons.settings
    ];
    var titleText = [
          'Star','Heart','Wi-Fi','Phone','Gear'
    ];
    var disabledIndex = 2;

    var list = <Widget>[];
    for(int i=0; i < titleText.length; i++){
      list.add(ListTile(
            leading: Icon(leadingIcons[i],size: 36,),
            title: Text(titleText[i],textScaleFactor: 1.5,),
            subtitle: Text('\$${10+rnd.nextInt(50)}',textScaleFactor: 1.2,),
            trailing: Icon(Icons.arrow_forward_ios),
            tileColor: Colors.black12,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 5
            ),
            enabled: (i != disabledIndex)?true:false,
            textColor: Colors.blue,
            iconColor: Colors.green,
      )
    );

    list.add(SizedBox(height: 10,));
  }

  return list;
}
