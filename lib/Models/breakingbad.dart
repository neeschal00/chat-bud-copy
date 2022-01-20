import 'package:collection/collection.dart';
import 'dart:convert';

List<Breakingbad> BreakingbadFromJson(String str) =>
    List<Breakingbad>.from(json.decode(str).map((x) => Breakingbad.fromMap(x)));

class Breakingbad {
  String? quote;
  String? author;

  Breakingbad({this.quote, this.author});

  factory Breakingbad.fromJson(Map<String, dynamic> json) => Breakingbad(
        quote: json['quote'] as String?,
        author: json['author'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'quote': quote,
        'author': author,
      };

  factory Breakingbad.fromMap(Map<String, dynamic> json) => Breakingbad(
        quote: json['quote'] as String?,
        author: json['author'] as String?,
      );

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Breakingbad) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => quote.hashCode ^ author.hashCode;
}
