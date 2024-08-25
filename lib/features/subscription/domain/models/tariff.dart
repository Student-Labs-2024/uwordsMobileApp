class Tariff {
    final int id;
  final String name;
  final int months;
  final int price;
  final String priceStr;
  final int? oldPrice;
  final String? oldPriceStr;
  final int? freePeriodDays;
  final String? freePeriodStr;
  final int? discount;
  final String comment;
  Tariff(
      {required this.id,
      required this.name,
      required this.months,
      required this.price,
      required this.priceStr,
      required this.oldPrice,
      required this.oldPriceStr,
      required this.freePeriodDays,
      required this.freePeriodStr,
      required this.comment,
      required this.discount});
}
