import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppLocalizations getApplocalizations(BuildContext context) =>
    AppLocalizations.of(context)!;

Locale getPlatformLocale() => WidgetsBinding.instance.platformDispatcher.locale;