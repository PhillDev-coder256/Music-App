import '../../../core/app_export.dart';
import 'playlist_item_model.dart';

class PlaylistModel {
  List<PlaylistItemModel> playlistItemList = [
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto8,
        renaissance: "Flashbacks",
        podvalCaplella: "Emika"),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto81,
        renaissance: "Ivar’s Revenge",
        podvalCaplella: "Danheim"),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto82,
        renaissance: "Urgent Siege",
        podvalCaplella: "Damned Anthem"),
    PlaylistItemModel(flashbacks: ImageConstant.imgPhoto83),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto85,
        renaissance: "Entangled",
        podvalCaplella: "Lorn"),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto86,
        renaissance: "The Cycle Continues",
        podvalCaplella: "Mac Quayle")
  ];
}
