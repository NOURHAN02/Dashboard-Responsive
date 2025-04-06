import 'package:dashboard_responsive/utils/app_images.dart';

class UserInfo {
  final String image;
  final String name;
  final String email;

  UserInfo({required this.image, required this.name, required this.email});
}

UserInfo firstAvater = UserInfo(
  image: ImageConstant.avater3,
  name: "Lekan Okeowo",
  email: "demo@gmail.com",
);
UserInfo secondtAvater = UserInfo(
  image: ImageConstant.avater2,
  name: "Madrani Andi",
  email: "Madraniadi20@gmail",
);
UserInfo threeAvater = UserInfo(
  image: ImageConstant.avater1,
  name: "Josua Nunito",
  email: "Josh Nunito@gmail.com",
);

List<UserInfo>lastestTransactionItem=[
   UserInfo(
  image: ImageConstant.avater2,
  name: "Madrani Andi",
  email: "Madraniadi20@gmail",
),
UserInfo(
  image: ImageConstant.avater1,
  name: "Josua Nunito",
  email: "Josh Nunito@gmail.com",
),
UserInfo(
  image: ImageConstant.avater3,
  name: "Lekan Okeowo",
  email: "demo@gmail.com",
),

];