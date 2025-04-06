import 'package:dashboard_responsive/utils/app_images.dart';

class Items {
  final String image;
  final String title;

  Items({required this.image, required this.title});
}

List<Items> itemsDrower = [
  Items(image: ImageConstant.imagesDashboard, title: "Dashboard"),
  Items(image: ImageConstant.imagesMyTransctions, title: "My Transaction"),
  Items(image: ImageConstant.imagesStatistics, title: "Statistics"),
  Items(image: ImageConstant.imagesWalletAccount, title: "Wallet Account"),
  Items(image: ImageConstant.imagesMyInvestments, title: "My Investments"),
];
Items settingsItem = Items(
  image: ImageConstant.imagesSettings,
  title: "Setting system",
);
Items logOutItem = Items(
  image: ImageConstant.imagesLogout,
  title: "Logout account",
);
