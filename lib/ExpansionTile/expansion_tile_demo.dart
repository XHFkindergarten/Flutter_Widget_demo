import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('折叠标题'),
      ),
      body: ExpansionTile(
        title: Text('Expansion Tile'),
        leading: Icon(Icons.dashboard),
        backgroundColor: Colors.white12,
        children: <Widget>[
          ListTile(
            title: Text(
              '标题',
              // style: Theme.of(context).textTheme.display2,
            ),
            subtitle: Text(
              '副标题',
              // style: Theme.of(context).textTheme.display1,
            ),
            leading: Icon(Icons.crop_square),
          )
        ],
      ),
    );
  }
}