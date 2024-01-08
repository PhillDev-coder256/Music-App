import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/profile_screen/models/profile_model.dart';

/// A provider class for the ProfileScreen.
///
/// This provider manages the state of the ProfileScreen, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {
  ProfileModel profileModelObj = ProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
