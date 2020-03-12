import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

class AddReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                 labelText: 'Statement',
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _AppBar(){
    return AppBar(
      title: Text('Add Report'),
    );
  }

  Widget _Tags(){
    return Tags();
  }
}