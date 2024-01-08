import '../settings_screen/widgets/equalizer_item_widget.dart';
import 'models/equalizer_item_model.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'package:music_player_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:music_player_app/widgets/app_bar/appbar_title.dart';
import 'package:music_player_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:music_player_app/widgets/app_bar/custom_app_bar.dart';
import 'provider/settings_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsProvider(), child: SettingsScreen());
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEqualizer(context),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_my_settings".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_default".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_club_music".tr,
                              style: CustomTextStyles
                                  .bodyLargeSecondaryContainer)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_classical_music".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_dance_music".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_low_frequency_gain".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_low_frequency_gain".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 5.v)
                    ]))));
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
        title: AppbarTitle(text: "lbl_equalizer".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloseOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildEqualizer(BuildContext context) {
    return SizedBox(
        height: 343.v,
        child: Consumer<SettingsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.only(right: 7.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 23.h);
              },
              itemCount: provider.settingsModelObj.equalizerItemList.length,
              itemBuilder: (context, index) {
                EqualizerItemModel model =
                    provider.settingsModelObj.equalizerItemList[index];
                return EqualizerItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
