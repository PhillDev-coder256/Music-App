import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/list_screen/models/list_model.dart';
import '../models/list_item_model.dart';

/// A provider class for the ListScreen.
///
/// This provider manages the state of the ListScreen, including the
/// current listModelObj

// ignore_for_file: must_be_immutable
class ListProvider extends ChangeNotifier {
  ListModel listModelObj = ListModel();

  @override
  void dispose() {
    super.dispose();
  }
}
