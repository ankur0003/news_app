import 'package:flutter_app/model/quotes.dart';

class Response {
  int statusCode;
  String message;
  int totalPages;
  int currentPage;
  List<Quotes> quotes;
}