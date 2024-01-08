import '../../../core/app_export.dart';
import 'favorites_item_model.dart';

class FavoritesModel {
  List<FavoritesItemModel> favoritesItemList = [
    FavoritesItemModel(
        tracks: ImageConstant.imgIconsOnprimarycontainer24x24,
        addToPlaylist: "Tracks"),
    FavoritesItemModel(tracks: ImageConstant.imgLock, addToPlaylist: "Artist"),
    FavoritesItemModel(tracks: ImageConstant.imgIcons, addToPlaylist: "Album"),
    FavoritesItemModel(
        tracks: ImageConstant.imgIconsOnprimarycontainer,
        addToPlaylist: "Playlists"),
    FavoritesItemModel(
        tracks: ImageConstant.imgDownload, addToPlaylist: "Download")
  ];
}
