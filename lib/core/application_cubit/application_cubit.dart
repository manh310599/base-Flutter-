import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vitech_blockchain/core/application_cubit/application_state.dart';
import 'package:vitech_blockchain/core/di/di.dart';
import 'package:dio/dio.dart';
import 'package:vitech_blockchain/core/theme/dark_theme.dart';
import 'package:vitech_blockchain/core/theme/light_theme.dart';

import '../services/local_storage.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationState());
  final localStorage = getIt<LocalStorage>();
  final dio = getIt<Dio>();
  init() async {
    checkLogin();
    final theme = await getTheme();
    final locale = await getLocale();
    emit(state.copyWith(theme: theme, locale: locale));
  }

  void checkLogin() async {
    final checkAccessToken = await localStorage.getAccessToken();
    if(checkAccessToken != null){
    }else {

    }

  }

  Future<ThemeData> getTheme() async {
    final theme = await localStorage.getTheme();
    return theme == 'dark' ? darkTheme : lightTheme;
  }

  Future<Locale> getLocale() async {
    final locale = await localStorage.getLocale();
    if(locale == null) return const Locale('en');
    return Locale(locale);
  }
}
