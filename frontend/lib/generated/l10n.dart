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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get loginButton {
    return Intl.message(
      'Sign In',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get hintEmail {
    return Intl.message(
      'Email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hintPassword {
    return Intl.message(
      'Password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Not a Member? `
  String get promptMember {
    return Intl.message(
      'Not a Member? ',
      name: 'promptMember',
      desc: '',
      args: [],
    );
  }

  /// `Register Now!`
  String get registerNow {
    return Intl.message(
      'Register Now!',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Hello There!`
  String get loginGreeting {
    return Intl.message(
      'Hello There!',
      name: 'loginGreeting',
      desc: '',
      args: [],
    );
  }

  /// `Nice to see you here!`
  String get loginSubtext {
    return Intl.message(
      'Nice to see you here!',
      name: 'loginSubtext',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createAccountButton {
    return Intl.message(
      'Create New Account',
      name: 'createAccountButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get hintName {
    return Intl.message(
      'Name',
      name: 'hintName',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account? `
  String get promptAccount {
    return Intl.message(
      'Already have an Account? ',
      name: 'promptAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign In!`
  String get registerSignIn {
    return Intl.message(
      'Sign In!',
      name: 'registerSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get registerGreeting {
    return Intl.message(
      'Create New Account',
      name: 'registerGreeting',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for choosing our services!`
  String get registerSubtext {
    return Intl.message(
      'Thank you for choosing our services!',
      name: 'registerSubtext',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Holdings`
  String get holdings {
    return Intl.message(
      'Holdings',
      name: 'holdings',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get analysis {
    return Intl.message(
      'Analysis',
      name: 'analysis',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get activities {
    return Intl.message(
      'Activities',
      name: 'activities',
      desc: '',
      args: [],
    );
  }

  /// `Dividends`
  String get dividends {
    return Intl.message(
      'Dividends',
      name: 'dividends',
      desc: '',
      args: [],
    );
  }

  /// `Portfolio Value`
  String get portfolioValue {
    return Intl.message(
      'Portfolio Value',
      name: 'portfolioValue',
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
      Locale.fromSubtags(languageCode: 'de'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
