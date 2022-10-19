import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:triathlon_tracker/app_theme.dart';
import 'package:triathlon_tracker/s.dart';
import 'package:triathlon_tracker/style.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeColor = ref.watch(styleProvider).themeColor;
    final colors = ref.watch(styleProvider).colors;
    final locale = ref.watch(localeProvider);
    
    return MaterialApp(
      theme: AppTheme.theme(themeColor, colors),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.supportedLocales,
      locale: locale,
    );
  }
}
