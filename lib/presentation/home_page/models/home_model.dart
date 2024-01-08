import '../../../core/app_export.dart';
import 'newreleaseslist_item_model.dart';

class HomeModel {
  List<NewreleaseslistItemModel> newreleaseslistItemList = [
    NewreleaseslistItemModel(
        urgentSiege: ImageConstant.imgThumbnails,
        urgentSiege1: "Urgent Siege",
        damnedAnthem: "Damned Anthem"),
    NewreleaseslistItemModel(
        urgentSiege: ImageConstant.imgThumbnails181x159,
        urgentSiege1: "Urgent Siege",
        damnedAnthem: "Damned Anthem")
  ];
}
