import '../../../core/app_export.dart';

/// This class is used in the [list_item_widget] screen.
class ListItemModel {
  ListItemModel({
    this.songNumber,
    this.burning,
    this.podvalCaplella,
    this.id,
  }) {
    songNumber = songNumber ?? "1";
    burning = burning ?? "Burning";
    podvalCaplella = podvalCaplella ?? "Podval Caplella";
    id = id ?? "";
  }

  String? songNumber;

  String? burning;

  String? podvalCaplella;

  String? id;
}
