import '../../../core/app_export.dart';
import 'renaissance_item_model.dart';

class ArtistModel {
  List<RenaissanceItemModel> renaissanceItemList = [
    RenaissanceItemModel(
        urgentSiege: ImageConstant.imgThumbnails,
        urgentSiege1: "Urgent Siege",
        damnedAnthem: "Damned Anthem"),
    RenaissanceItemModel(
        urgentSiege: ImageConstant.imgThumbnails181x159,
        urgentSiege1: "Urgent Siege",
        damnedAnthem: "Damned Anthem")
  ];
}
