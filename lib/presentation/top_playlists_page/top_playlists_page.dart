import '../top_playlists_page/widgets/topplaylist_item_widget.dart';
import 'models/top_playlists_model.dart';
import 'models/topplaylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:music_player_app/widgets/app_bar/appbar_title.dart';
import 'package:music_player_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:music_player_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/top_playlists_provider.dart';

class TopPlaylistsPage extends StatefulWidget {
  const TopPlaylistsPage({Key? key}) : super(key: key);

  @override
  TopPlaylistsPageState createState() => TopPlaylistsPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TopPlaylistsProvider(), child: TopPlaylistsPage());
  }
}

class TopPlaylistsPageState extends State<TopPlaylistsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h),
                child: Consumer<TopPlaylistsProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 24.v);
                      },
                      itemCount: provider
                          .topPlaylistsModelObj.topplaylistItemList.length,
                      itemBuilder: (context, index) {
                        TopplaylistItemModel model = provider
                            .topPlaylistsModelObj.topplaylistItemList[index];
                        return TopplaylistItemWidget(model,
                            onTapImgRenaissance: () {
                          onTapImgRenaissance(context);
                        });
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_top_playlists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
