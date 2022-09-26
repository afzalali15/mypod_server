/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Example extends TableRow {
  @override
  String get className => 'Example';
  @override
  String get tableName => 'example';

  static final t = ExampleTable();

  @override
  int? id;
  late bool isActive;
  late String test;
  late String name;
  late int data;

  Example({
    this.id,
    required this.isActive,
    required this.test,
    required this.name,
    required this.data,
  });

  Example.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    isActive = _data['isActive']!;
    test = _data['test']!;
    name = _data['name']!;
    data = _data['data']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'isActive': isActive,
      'test': test,
      'name': name,
      'data': data,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'isActive': isActive,
      'test': test,
      'name': name,
      'data': data,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'isActive': isActive,
      'test': test,
      'name': name,
      'data': data,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'isActive':
        isActive = value;
        return;
      case 'test':
        test = value;
        return;
      case 'name':
        name = value;
        return;
      case 'data':
        data = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Example>> find(
    Session session, {
    ExampleExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Example>(
      where: where != null ? where(Example.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Example?> findSingleRow(
    Session session, {
    ExampleExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Example>(
      where: where != null ? where(Example.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Example?> findById(Session session, int id) async {
    return session.db.findById<Example>(id);
  }

  static Future<int> delete(
    Session session, {
    required ExampleExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Example>(
      where: where(Example.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Example row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Example row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Example row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    ExampleExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Example>(
      where: where != null ? where(Example.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ExampleExpressionBuilder = Expression Function(ExampleTable t);

class ExampleTable extends Table {
  ExampleTable() : super(tableName: 'example');

  @override
  String tableName = 'example';
  final id = ColumnInt('id');
  final isActive = ColumnBool('isActive');
  final test = ColumnString('test');
  final name = ColumnString('name');
  final data = ColumnInt('data');

  @override
  List<Column> get columns => [
        id,
        isActive,
        test,
        name,
        data,
      ];
}

@Deprecated('Use ExampleTable.t instead.')
ExampleTable tExample = ExampleTable();
