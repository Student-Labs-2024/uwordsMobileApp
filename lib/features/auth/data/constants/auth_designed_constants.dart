class AuthDesignedConstants {
  static const int pincodeLength = 4;
  static const double pincodeCellWidth = 45;
  static const double pincodeCellHeigth = 50;
  static const double borderWidth = 1;
  static const double cursorHeight = 20;
  static const double pincodeBorderRadius = 15;
  static const double dividerLengthMultuply = 0.35;
  static const double dividerHeight = 1;
  static const double datePickerHeight = 400;
  static const int minimumDate = -2191196888000;
  static final int maximumYear = DateTime.now().year - 1;
  static final DateTime maximumDate = DateTime.utc(
      DateTime.now().year - 1, DateTime.now().month-1, 1);
  static const double iconReturnSize = 40;
  static const double datePickerMaxHeight = 500;
  static const double visabillityIconHeight = 12;
  static const double spaceForPinCode = 0.6;
}
