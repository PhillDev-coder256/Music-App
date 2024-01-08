import '../models/renaissance_item_model.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/core/app_export.dart';

// ignore: must_be_immutable
class RenaissanceItemWidget extends StatelessWidget {
  RenaissanceItemWidget(
    this.renaissanceItemModelObj, {
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  RenaissanceItemModel renaissanceItemModelObj;

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: renaissanceItemModelObj?.urgentSiege,
              height: 181.v,
              width: 159.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              renaissanceItemModelObj.urgentSiege1!,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.v),
            Text(
              renaissanceItemModelObj.damnedAnthem!,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
