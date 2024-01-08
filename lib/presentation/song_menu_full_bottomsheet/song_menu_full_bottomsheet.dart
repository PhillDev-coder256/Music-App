import '../song_menu_full_bottomsheet/widgets/options_item_widget.dart';
import 'models/options_item_model.dart';
import 'models/song_menu_full_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/widgets/custom_icon_button.dart';
import 'provider/song_menu_full_provider.dart';

class SongMenuFullBottomsheet extends StatefulWidget {
  const SongMenuFullBottomsheet({Key? key}) : super(key: key);

  @override
  SongMenuFullBottomsheetState createState() => SongMenuFullBottomsheetState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SongMenuFullProvider(),
        child: SongMenuFullBottomsheet());
  }
}

class SongMenuFullBottomsheetState extends State<SongMenuFullBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.black
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL29),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 5.v,
              width: 35.h,
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(2.h))),
          SizedBox(height: 23.v),
          _buildSixtyTwo(context),
          SizedBox(height: 27.v),
          _buildOptions(context),
          SizedBox(height: 44.v)
        ]));
  }

  /// Section Widget
  Widget _buildSongDetails(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgThumbnail,
          height: 65.adaptSize,
          width: 65.adaptSize,
          radius: BorderRadius.circular(4.h)),
      SizedBox(height: 9.v),
      Text("lbl_renaissance".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 5.v),
      SizedBox(
          width: 138.h,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("lbl_podval_caplella".tr,
                        style: theme.textTheme.bodyMedium)),
                Opacity(
                    opacity: 0.648,
                    child: Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 7.v),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.58),
                            borderRadius: BorderRadius.circular(1.h)))),
                Text("lbl_3_43".tr, style: theme.textTheme.bodyMedium)
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 81.v),
              child: CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgBookmark))),
          _buildSongDetails(context),
          Padding(
              padding: EdgeInsets.only(bottom: 81.v),
              child: CustomIconButton(
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(imagePath: ImageConstant.imgQuestion)))
        ]);
  }

  /// Section Widget
  Widget _buildOptions(BuildContext context) {
    return Consumer<SongMenuFullProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 8.v);
          },
          itemCount: provider.songMenuFullModelObj.optionsItemList.length,
          itemBuilder: (context, index) {
            OptionsItemModel model =
                provider.songMenuFullModelObj.optionsItemList[index];
            return OptionsItemWidget(model, onTapImgAddtoPlaylist: () {
              onTapImgAddtoPlaylist(context);
            });
          });
    });
  }

  /// Navigates to the previous screen.
  onTapImgAddtoPlaylist(BuildContext context) {
    NavigatorService.goBack();
  }
}
