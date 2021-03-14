// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Binevenido a \nA la Mushuk Yuya`
  String get welcomeTambo {
    return Intl.message(
      'Binevenido a \nA la Mushuk Yuya',
      name: 'welcomeTambo',
      desc: '',
      args: [],
    );
  }

  /// `Fresa`
  String get nameKirk {
    return Intl.message(
      'Fresa',
      name: 'nameKirk',
      desc: '',
      args: [],
    );
  }

  /// `$3/Kg`
  String get priceKirk {
    return Intl.message(
      '\$3/Kg',
      name: 'priceKirk',
      desc: '',
      args: [],
    );
  }

  /// `Center, Cañar`
  String get locationKirk {
    return Intl.message(
      'Center, Cañar',
      name: 'locationKirk',
      desc: '',
      args: [],
    );
  }

  /// `Fragaria, llamado comúnmente fresa o frutilla, es un género de plantas rastreras estoloníferas de la familia Rosaceae. Agrupa unos 400 taxones descritos, de los cuales solo unos 20 están aceptados. \n\nAs a fact of great importance within the parish life was the erection of the cave dedicated to Jesús del Gran Poder, located in the northern part of the Canton`
  String get detailsKirk {
    return Intl.message(
      'Fragaria, llamado comúnmente fresa o frutilla, es un género de plantas rastreras estoloníferas de la familia Rosaceae. Agrupa unos 400 taxones descritos, de los cuales solo unos 20 están aceptados. \n\nAs a fact of great importance within the parish life was the erection of the cave dedicated to Jesús del Gran Poder, located in the northern part of the Canton',
      name: 'detailsKirk',
      desc: '',
      args: [],
    );
  }

  /// `Nope`
  String get urlKirk {
    return Intl.message(
      'Nope',
      name: 'urlKirk',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}