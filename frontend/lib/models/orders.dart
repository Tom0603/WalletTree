class Orders {
  final String userEmail;
  final String ticker;
  final double shares;
  final double price;

  Orders(
      {required this.userEmail,
      required this.ticker,
      required this.shares,
      required this.price});

  factory Orders.fromJson(Map<String, dynamic> json) {
    return Orders(
      userEmail: json['user_email'],
      ticker: json['ticker'],
      shares: json['shares'],
      price: json['price'],
    );
  }
}
