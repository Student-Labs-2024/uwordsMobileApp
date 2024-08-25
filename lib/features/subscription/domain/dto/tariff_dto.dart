class TariffDto {
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

  TariffDto(
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

  factory TariffDto.fromJson({required Map<String, dynamic> tariffMap}) {
    return TariffDto(
        id: tariffMap['id'],
        name: tariffMap['name'],
        months: tariffMap['months'],
        price: tariffMap['price'],
        oldPrice: tariffMap['old_price'] ?? 0,
        priceStr: tariffMap['price_str'],
        oldPriceStr: tariffMap['old_price_str'],
        freePeriodDays: tariffMap['free_period_days'],
        freePeriodStr: tariffMap['free_period_str'],
        comment: tariffMap['comment'],
        discount: tariffMap['discount']);
  }
}
