import 'package:uwords/features/subscription/domain/dto/tariff_dto.dart';
import 'package:uwords/features/subscription/domain/models/tariff.dart';

extension TariffMapper on TariffDto {
  Tariff toModel() => Tariff(
      id: id, name: name, months: months, price: price, oldPrice: oldPrice);
}
