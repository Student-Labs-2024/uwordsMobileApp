import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum FieldUnderlineText {
  shortLength,
  wrongEmail,
  wrongPassword,
  simplePassword
}

String getLocalizedFieldUnderlineText(
    BuildContext context, FieldUnderlineText enumerated) {
  switch (enumerated) {
    case FieldUnderlineText.shortLength:
      return AppLocalizations.of(context).shortPassword;
    case FieldUnderlineText.wrongEmail:
      return AppLocalizations.of(context).wrongEmail;
    case FieldUnderlineText.wrongPassword:
      return AppLocalizations.of(context).wrongPassword;
    case FieldUnderlineText.simplePassword:
      return AppLocalizations.of(context).simplePassword;
  }
}
