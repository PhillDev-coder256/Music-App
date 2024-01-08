import '../../../core/app_export.dart';
import 'topplaylist_item_model.dart';

class TopPlaylistsModel {
  List<TopplaylistItemModel> topplaylistItemList = [
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground,
        renaissance1: "Renaissance",
        tracksCounter: "843 tracks",
        duration: "23 hours"),
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground181x342,
        renaissance1: "Radiance",
        tracksCounter: "843 tracks",
        duration: "23 hours"),
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground1,
        renaissance1: "Urgent Siege",
        tracksCounter: "843 tracks",
        duration: "23 hours")
  ];
}
