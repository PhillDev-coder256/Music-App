import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/album_details_screen/models/album_details_model.dart';
import '../models/songslist_item_model.dart';

/// A provider class for the AlbumDetailsScreen.
///
/// This provider manages the state of the AlbumDetailsScreen, including the
/// current albumDetailsModelObj

// ignore_for_file: must_be_immutable
class AlbumDetailsProvider extends ChangeNotifier {
  AlbumDetailsModel albumDetailsModelObj = AlbumDetailsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
