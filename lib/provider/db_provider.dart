import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:tambo/model/producto.dart';
import 'package:tambo/model/venta.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();
  DBProvider._();
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentDirecotry = await getApplicationDocumentsDirectory();
    String path = join(documentDirecotry.path, 'Ucacue4.db');
    return await openDatabase(path, version: 214, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE producto ('
          'id     VARCHAR(200)'
          ',precio       INTEGER'
          ',nombre       VARCHAR(200)'
          ',descripcion     VARCHAR(200)'
          ',location    VARCHAR(200)'
          ',img    VARCHAR(200)'
          ');');   

        await db.execute(
          'CREATE TABLE venta ('
          'id     VARCHAR(200)'
          ',precio       INTEGER'
          ',nombre       VARCHAR(200)'
          ',img    VARCHAR(200)'
          ');');   
    });
  }

  nuevoProducto(Producto producto) async {
    final db = await database;
    final res = await db.insert('producto', producto.toJson());
    return res;
  } 

    Future<List<Producto>> getAllProducto() async {
    final db = await database;
    final resp = await db.query('producto');
    List<Producto> recupera =
        resp.isNotEmpty ? resp.map((c) => Producto.fromJson(c)).toList() : [];
    return recupera;
  }



  nuevaVenta(Venta venta) async {
    final db = await database;
    final res = await db.insert('venta', venta.toJson());
    return res;
  } 

    Future<List<Venta>> getAllVenta() async {
    final db = await database;
    final resp = await db.query('venta');
    List<Venta> recupera =
        resp.isNotEmpty ? resp.map((c) => Venta.fromJson(c)).toList() : [];
    return recupera;
  }

}
