import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/presentation/artist_screen/models/artist_model.dart';
import '../models/renaissance_item_model.dart';

/// A provider class for the ArtistScreen.
///
/// This provider manages the state of the ArtistScreen, including the
/// current artistModelObj

// ignore_for_file: must_be_immutable
class ArtistProvider extends ChangeNotifier {
  ArtistModel artistModelObj = ArtistModel();

  @override
  void dispose() {
    super.dispose();
  }
}
