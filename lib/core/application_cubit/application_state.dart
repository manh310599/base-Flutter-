import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vitech_blockchain/core/theme/dark_theme.dart';
import 'package:vitech_blockchain/data/models/user.dart';

part 'application_state.freezed.dart';

@freezed
class ApplicationState with _$ApplicationState {

  const ApplicationState._();


  const factory ApplicationState({
    @Default(null) ThemeData? theme,
    @Default(Locale('en')) Locale? locale,
    @Default(null) User? user,
  }) = _ApplicationState;
}
