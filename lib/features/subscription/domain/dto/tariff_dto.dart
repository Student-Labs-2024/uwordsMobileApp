class TariffDto {
  final int id;
  final String name;
  final int months;
  final int price;
  final int oldPrice;

  TariffDto(
      {required this.id,
      required this.name,
      required this.months,
      required this.price,
      required this.oldPrice});

  factory TariffDto.fromJson({required Map<String, dynamic> tariffMap}) {
    return TariffDto(
        id: tariffMap['id'],
        name: tariffMap['name'],
        months: tariffMap['months'],
        price: tariffMap['price'],
        oldPrice: tariffMap['oldPrice'] ?? 0);
  }
}
