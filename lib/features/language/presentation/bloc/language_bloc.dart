import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/local_storage_service.dart';

part 'language_event.dart';
part 'language_state.dart';

@injectable
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final LocalStorageService _localStorageService;

  LanguageBloc(this._localStorageService)
      : super(LanguageInitial(Locale(_localStorageService.getLanguage()))) {
    on<ChangeLanguage>(_onChangeLanguage);
  }

  void _onChangeLanguage(ChangeLanguage event, Emitter<LanguageState> emit) async {
    await _localStorageService.saveLanguage(event.locale.languageCode);
    emit(LanguageChanged(event.locale));
  }
}
