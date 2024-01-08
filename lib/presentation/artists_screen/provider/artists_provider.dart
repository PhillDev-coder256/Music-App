import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/artists_screen/models/artists_model.dart';
import '../models/artist_item_model.dart';

/// A provider class for the ArtistsScreen.
///
/// This provider manages the state of the ArtistsScreen, including the
/// current artistsModelObj

// ignore_for_file: must_be_immutable
class ArtistsProvider extends ChangeNotifier {
  ArtistsModel artistsModelObj = ArtistsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
