import '../playlist_bottomsheet/widgets/playlist_item_widget.dart';
import 'models/playlist_item_model.dart';
import 'models/playlist_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';
import 'provider/playlist_provider.dart';

// ignore_for_file: must_be_immutable
class PlaylistBottomsheet extends StatefulWidget {
  const PlaylistBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PlaylistBottomsheetState createState() => PlaylistBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlaylistProvider(),
      child: PlaylistBottomsheet(),
    );
  }
}

class PlaylistBottomsheetState extends State<PlaylistBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 729.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 729.v,
                width: double.maxFinite,
              ),
            ),
            _buildSeventyNine(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: provider.playlistModelObj.playlistItemList.length,
          itemBuilder: (context, index) {
            PlaylistItemModel model =
                provider.playlistModelObj.playlistItemList[index];
            return PlaylistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.445,
              child: Container(
                height: 5.v,
                width: 35.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.v),
            _buildPlaylist(context),
          ],
        ),
      ),
    );
  }
}
