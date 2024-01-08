import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/settings_screen/models/settings_model.dart';
import '../models/equalizer_item_model.dart';

/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj

// ignore_for_file: must_be_immutable
class SettingsProvider extends ChangeNotifier {
  SettingsModel settingsModelObj = SettingsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
