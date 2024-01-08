import '../home_page/widgets/newreleaseslist_item_widget.dart';
import 'models/home_model.dart';
import 'models/newreleaseslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/widgets/app_bar/appbar_title.dart';
import 'package:music_player_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:music_player_app/widgets/app_bar/custom_app_bar.dart';
import 'package:music_player_app/widgets/custom_elevated_button.dart';
import 'provider/home_provider.dart';
import 'package:music_player_app/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomePage());
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.h, right: 24.h, bottom: 5.v),
                        child: Column(children: [
                          Container(
                              width: 243.h,
                              margin: EdgeInsets.only(left: 49.h, right: 50.h),
                              child: Text("msg_listen_to_music_without".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 26.v),
                          CustomElevatedButton(
                              height: 40.v,
                              width: 236.h,
                              text: "lbl_trial_version".tr,
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainerTL20,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 41.v),
                          Text("msg_free_for_3_months".tr,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer),
                          SizedBox(height: 44.v),
                          _buildNewReleases(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "lbl_dashboard".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNewReleasesList(BuildContext context) {
    return SizedBox(
        height: 230.v,
        child: Consumer<HomeProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 24.h);
              },
              itemCount: provider.homeModelObj.newreleaseslistItemList.length,
              itemBuilder: (context, index) {
                NewreleaseslistItemModel model =
                    provider.homeModelObj.newreleaseslistItemList[index];
                return NewreleaseslistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNewReleases(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_new_releases".tr, style: theme.textTheme.headlineSmall),
        GestureDetector(
            onTap: () {
              onTapTxtViewAll(context);
            },
            child: Padding(
                padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                child: Text("lbl_view_all".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer)))
      ]),
      SizedBox(height: 20.v),
      _buildNewReleasesList(context)
    ]);
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [PlaylistBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtViewAll(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => PlaylistBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
