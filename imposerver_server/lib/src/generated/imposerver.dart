/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

/// Holds a note with a text written by the user.
abstract class Imposerver extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Imposerver._({
    int? id,
    required this.title,
    required this.text,
    required this.content,
    required this.publishedOn,
    required this.isPrime,
  }) : super(id);

  factory Imposerver({
    int? id,
    required String title,
    required String text,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) = _ImposerverImpl;

  factory Imposerver.fromJson(Map<String, dynamic> jsonSerialization) {
    return Imposerver(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      text: jsonSerialization['text'] as String,
      content: jsonSerialization['content'] as String,
      publishedOn:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['publishedOn']),
      isPrime: jsonSerialization['isPrime'] as bool,
    );
  }

  static final t = ImposerverTable();

  static const db = ImposerverRepository._();

  /// The contents of the note.
  String title;

  String text;

  String content;

  DateTime publishedOn;

  bool isPrime;

  @override
  _i1.Table get table => t;

  Imposerver copyWith({
    int? id,
    String? title,
    String? text,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'text': text,
      'content': content,
      'publishedOn': publishedOn.toJson(),
      'isPrime': isPrime,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'text': text,
      'content': content,
      'publishedOn': publishedOn.toJson(),
      'isPrime': isPrime,
    };
  }

  static ImposerverInclude include() {
    return ImposerverInclude._();
  }

  static ImposerverIncludeList includeList({
    _i1.WhereExpressionBuilder<ImposerverTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ImposerverTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImposerverTable>? orderByList,
    ImposerverInclude? include,
  }) {
    return ImposerverIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Imposerver.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Imposerver.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ImposerverImpl extends Imposerver {
  _ImposerverImpl({
    int? id,
    required String title,
    required String text,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) : super._(
          id: id,
          title: title,
          text: text,
          content: content,
          publishedOn: publishedOn,
          isPrime: isPrime,
        );

  @override
  Imposerver copyWith({
    Object? id = _Undefined,
    String? title,
    String? text,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  }) {
    return Imposerver(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      text: text ?? this.text,
      content: content ?? this.content,
      publishedOn: publishedOn ?? this.publishedOn,
      isPrime: isPrime ?? this.isPrime,
    );
  }
}

class ImposerverTable extends _i1.Table {
  ImposerverTable({super.tableRelation}) : super(tableName: 'imposerver') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    publishedOn = _i1.ColumnDateTime(
      'publishedOn',
      this,
    );
    isPrime = _i1.ColumnBool(
      'isPrime',
      this,
    );
  }

  /// The contents of the note.
  late final _i1.ColumnString title;

  late final _i1.ColumnString text;

  late final _i1.ColumnString content;

  late final _i1.ColumnDateTime publishedOn;

  late final _i1.ColumnBool isPrime;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        text,
        content,
        publishedOn,
        isPrime,
      ];
}

class ImposerverInclude extends _i1.IncludeObject {
  ImposerverInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Imposerver.t;
}

class ImposerverIncludeList extends _i1.IncludeList {
  ImposerverIncludeList._({
    _i1.WhereExpressionBuilder<ImposerverTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Imposerver.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Imposerver.t;
}

class ImposerverRepository {
  const ImposerverRepository._();

  Future<List<Imposerver>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImposerverTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ImposerverTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImposerverTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Imposerver>(
      where: where?.call(Imposerver.t),
      orderBy: orderBy?.call(Imposerver.t),
      orderByList: orderByList?.call(Imposerver.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Imposerver?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImposerverTable>? where,
    int? offset,
    _i1.OrderByBuilder<ImposerverTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ImposerverTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Imposerver>(
      where: where?.call(Imposerver.t),
      orderBy: orderBy?.call(Imposerver.t),
      orderByList: orderByList?.call(Imposerver.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Imposerver?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Imposerver>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Imposerver>> insert(
    _i1.Session session,
    List<Imposerver> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Imposerver>(
      rows,
      transaction: transaction,
    );
  }

  Future<Imposerver> insertRow(
    _i1.Session session,
    Imposerver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Imposerver>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Imposerver>> update(
    _i1.Session session,
    List<Imposerver> rows, {
    _i1.ColumnSelections<ImposerverTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Imposerver>(
      rows,
      columns: columns?.call(Imposerver.t),
      transaction: transaction,
    );
  }

  Future<Imposerver> updateRow(
    _i1.Session session,
    Imposerver row, {
    _i1.ColumnSelections<ImposerverTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Imposerver>(
      row,
      columns: columns?.call(Imposerver.t),
      transaction: transaction,
    );
  }

  Future<List<Imposerver>> delete(
    _i1.Session session,
    List<Imposerver> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Imposerver>(
      rows,
      transaction: transaction,
    );
  }

  Future<Imposerver> deleteRow(
    _i1.Session session,
    Imposerver row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Imposerver>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Imposerver>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ImposerverTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Imposerver>(
      where: where(Imposerver.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ImposerverTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Imposerver>(
      where: where?.call(Imposerver.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
