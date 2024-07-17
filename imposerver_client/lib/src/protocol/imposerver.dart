/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

/// Holds a note with a text written by the user.
abstract class Imposerver implements _i1.SerializableModel {
  Imposerver._({
    this.id,
    required this.title,
    required this.text,
    required this.content,
    required this.publishedOn,
    required this.isPrime,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The contents of the note.
  String title;

  String text;

  String content;

  DateTime publishedOn;

  bool isPrime;

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
