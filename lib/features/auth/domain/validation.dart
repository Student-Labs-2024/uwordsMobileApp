import 'package:email_validator/email_validator.dart';
import 'package:uwords/features/auth/domain/fields_underline_text.dart';

class ValidationRule {
  final FieldUnderlineText errorMessage;
  final bool Function(String) isValid;

  ValidationRule({
    required this.errorMessage,
    required this.isValid,
  });
}

final List<ValidationRule> validationPasswordRules = [
  ValidationRule(
    errorMessage: FieldUnderlineText.shortLength,
    isValid: (text) => text.length >= 8,
  ),
  ValidationRule(
    errorMessage: FieldUnderlineText.simplePassword,
    isValid: (text) {
      if (!text.contains(RegExp(r'[A-Z]'))) {
        return false;
      }
      if (!text.contains(RegExp(r'[a-z]'))) {
        return false;
      }
      if (!text.contains(RegExp(r'[0-9]'))) {
        return false;
      }
      return true;
    },
  ),
  ValidationRule(
      errorMessage: FieldUnderlineText.wrongPassword,
      isValid: (text) {
        if (text.contains(RegExp(r'[а-яА-Я]'))) {
          return false;
        }
        return true;
      }),
];

final List<ValidationRule> validationEmailRules = [
  ValidationRule(
      errorMessage: FieldUnderlineText.wrongEmail,
      isValid: (text) {
        return EmailValidator.validate(text);
      }),
  ValidationRule(
      errorMessage: FieldUnderlineText.wrongEmail,
      isValid: (text) {
        if (text.contains(RegExp(r'[а-яА-Я]'))) {
          return false;
        }
        return true;
      })
];

final List<ValidationRule> validationDatePickerRules = [
  ValidationRule(
      errorMessage: FieldUnderlineText.requiredField,
      isValid: (text) {
        if (text.isEmpty) {
          return false;
        }
        return true;
      })
];
