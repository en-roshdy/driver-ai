part of 'language_bloc.dart';

abstract class LanguageState {
  final Locale locale;
  LanguageState(this.locale);
}

class LanguageInitial extends LanguageState {
  LanguageInitial(super.locale);
}

class LanguageChanged extends LanguageState {
  LanguageChanged(super.locale);
}
