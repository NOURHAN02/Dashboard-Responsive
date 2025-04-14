import 'package:dashboard_responsive/utils/app_images.dart';
import 'package:dashboard_responsive/utils/colors.dart';
import 'package:dashboard_responsive/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.secondColor,
          borderRadius: BorderRadius.circular(12.0),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImageConstant.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(ImageConstant.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Text(
                      "0918 8124 0042 8129",
                      style: AppStyles.styleSemiBold24(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                    Text(
                      "12/20 - 124",
                      style: AppStyles.styleRegular16(
                        context,
                      ).copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(child: SizedBox(height: 54 - 28)),
          ],
        ),
      ),
    );
  }
}
