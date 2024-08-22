class FormDto {
  final String link;
  final String paymentId;
  FormDto({required this.link, required this.paymentId});

  factory FormDto.fromJson({required List<String> infoList}) {
    return FormDto(link: infoList[0], paymentId: infoList[1]);
  }
}
