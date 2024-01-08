import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/albums_screen/models/albums_model.dart';
import '../models/albums_item_model.dart';

/// A provider class for the AlbumsScreen.
///
/// This provider manages the state of the AlbumsScreen, including the
/// current albumsModelObj

// ignore_for_file: must_be_immutable
class AlbumsProvider extends ChangeNotifier {
  AlbumsModel albumsModelObj = AlbumsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
