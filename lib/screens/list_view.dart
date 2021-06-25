import 'package:flutter/material.dart';
import 'package:tambo/model/venta.dart';
import 'package:tambo/provider/db_provider.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const numItems = 20;
    const _biggerFont = TextStyle(fontSize: 18.0);

    Widget _buildRow() {
      return Container(
        child: FutureBuilder(
          future: DBProvider.db.getAllVenta(),
          builder: (BuildContext context, AsyncSnapshot<List<Venta>> snapshot) {
            assert(context != null);
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: false,
                itemCount: snapshot.data == null ? 0.0 : snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  Venta venta = snapshot.data[index];
                  return Text(venta.nombre);
                },
              );

              // ' ${}- ${snapshot.data[index]['num']}  -  ${snapshot.data[index]['chek']}'),
            }
            return Container(child: Center(child: CircularProgressIndicator()));
          },
        ),
      );

      /* */
    }

    buildHorizontalList(BuildContext context) {
      return Container(
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          height: 250.0,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder(
            future: DBProvider.db.getAllVenta(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Venta>> snapshot) {
              assert(context != null);
              if (snapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  shrinkWrap: true,
                  itemCount: snapshot.data == null ? 0.0 : snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Venta venta = snapshot.data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(
                          "${venta.img}",
                          width: MediaQuery.of(context).size.width - 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "${venta.nombre} ${venta.precio}\$",
                        style: _biggerFont,
                      ),
                      trailing: const Icon(Icons.dashboard),
                    );
                  },
                );

                // ' ${}- ${snapshot.data[index]['num']}  -  ${snapshot.data[index]['chek']}'),
              }
              return Container(
                  child: Center(child: CircularProgressIndicator()));
            },
          )

          /* ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount:  DBProvider.db.getAllProducto() == null
            ? 0.0
            :  DBProvider.db.getAllProducto().length,
        itemBuilder: (BuildContext context, int index) {
          Map place = Place.getPlaces(context).reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),*/
          );
    }

    return buildHorizontalList(context);
  }
}
