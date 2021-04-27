import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tambo/util/places.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow(int idx, int numero) {
      return ListTile(
        leading: CircleAvatar(
           child: Image.asset(
                "${Place.getPlaces(context)[numero]["img"]}",
               
                width: MediaQuery.of(context).size.width - 40.0,
                fit: BoxFit.cover,
              ),
        ),
         
        title: Text(
           "${Place.getPlaces(context)[numero]["name"]} ${numero}Kg",
          style: _biggerFont,
        ),
        trailing: const Icon(Icons.dashboard),
      );
    }

    return ListView.builder(
      itemCount: numItems * 2,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return const Divider();
        final index = i ~/ 2 + 1;
        Random rnd = new Random();
        final r = 1 + rnd.nextInt(5 - 1);
        return _buildRow(index, r);
      },
    );
  }
}