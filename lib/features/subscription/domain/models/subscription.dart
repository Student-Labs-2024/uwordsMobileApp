class Subscription {
  final int id;
  final String name;
  bool isActive;
  final int months;
  final double price;
  final double oldPrice;
  Subscription(
      {required this.id,
      required this.name,
      required this.isActive,
      required this.months,
      required this.price,
      required this.oldPrice});
}
