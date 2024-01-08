import '../../../core/app_export.dart';
import 'options_item_model.dart';

class SongMenuFullModel {
  List<OptionsItemModel> optionsItemList = [
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgClose,
        addToPlaylist: "Add to Playlist"),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgLock, addToPlaylist: "Artist"),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIcons, addToPlaylist: "Album"),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgTelevision,
        addToPlaylist: "I don’t like it"),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIconsOnprimarycontainer,
        addToPlaylist: "Song lyrics"),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgDownload, addToPlaylist: "Download")
  ];
}
