import 'dart:async';
import 'dart:io';

import 'package:flutter_demo/ProductSQL.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDbProvider {
  SQLiteDbProvider._();

  static final SQLiteDbProvider db = SQLiteDbProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await InitDB();
      return _database;
    }
  }

  static final columns = ["id", "name", "description", "price", "image"];

  Future<Database> InitDB() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "ProductDb.db");

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE Product (id INTEGER PRIMARY KEY, name TEXT, description TEXT,price INTEGER, image TEXT)");

      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "1",
            "iPhone",
            "iPhone is the stylist phone ever",
            1000,
            "iphone.png"
          ]);
      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "2",
            "Pixel",
            "Pixel is the most feature phone ever",
            800,
            "pixel.png"
          ]);
      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "3",
            "Laptop",
            "Laptop is most productive development tool",
            2000,
            "laptop.png"
          ]);
      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "4",
            "Tablet",
            "Tablet is the most useful device ever for meeting",
            1500,
            "tablet.png"
          ]);
      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "5",
            "Pendrive",
            "Pendrive is useful storage medium",
            100,
            "pendrive.png"
          ]);
      await db.execute(
          "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
          [
            "6",
            "Floppy Drive",
            "Floppy drive is useful rescue storage medium",
            20,
            "floppydisk.png"
          ]);
    });
  }

  Future<List<ProductSQL>> getAllProduct() async {
    final db = await database;
    List<Map> results =
        await db.query("Product", columns: columns, orderBy: "id ASC");

    List<ProductSQL> products = new List();
    results.forEach((row) {
      ProductSQL product = ProductSQL.fromMap(row);
      products.add(product);
    });
    return products;
  }

  Future<ProductSQL> getProductByID(int id) async {
    final db = await database;
    var result = await db.query("Product", where: "id = ", whereArgs: [id]);
    return result.isNotEmpty ? ProductSQL.fromMap(result.first) : Null;
  }

  insert(ProductSQL mProduct) async {
    final db = await database;
    var maxIdResult =
        await db.rawQuery("SELECT MAX(id)+id as last_id from Product");
    var id = maxIdResult.first["last_id"];
    var result = await db.rawQuery(
        "INSERT INTO Product ('id', 'name', 'description', 'price', 'image') VALUES (?, ?, ?, ?, ?)",
        [
          id,
          mProduct.name,
          mProduct.description,
          mProduct.price,
          mProduct.image
        ]);
    return result;
  }

  update(ProductSQL mProduct) async {
    final db = await database;
    var result = await db.update("Product", mProduct.toMap(),
        where: "id = ", whereArgs: [mProduct.id]);
    return result;
  }

  delete(int id) async {
    final db = await database;
    var result = await db.delete("Product", where: "id = ", whereArgs: [id]);
    return result;
  }
}
