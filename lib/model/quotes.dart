class Quotes {
  int id;
  String author;
  String quoteText;
  Quotes({
    this.id,this.author,this.quoteText
});
  factory Quotes.fromJson(Map<String, dynamic> json){
    return Quotes(
      id: json['_id'],
      author: json['quoteAuthor'],
      quoteText: json['quoteText']
    );
  }
}