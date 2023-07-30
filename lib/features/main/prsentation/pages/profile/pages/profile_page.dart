import 'package:flutter/material.dart';
import 'package:flutter_competition/core/theme/app_text_style.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/widgets/profile_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/svg/edit.svg"),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://i.pinimg.com/236x/b1/44/92/b144929eeba8b774fdbfa39c524f9839.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppUtils.kBoxHeight10,
            Text(
              "Ibrohim Toxtasinov",
              style: context.textStyle.boldBody,
            ),
            AppUtils.kBoxHeight36,
            ProfileItem(
              isRightIconHave: true,
              rightIcon: "assets/svg/arrow_right.svg",
              title: "Delivery address",
              subtitle: "Current address",
              onTap: () {
                // Navigator.pushNamed(context, deliveryAddressRoute);
              },
              leftIcon: "assets/svg/location.svg",
            ),
            ProfileItem(
              isRightIconHave: true,
              rightIcon: "assets/svg/arrow_right.svg",
              title: "Language",
              subtitle: "English",
              onTap: () {
                // Navigator.pushNamed(context, languageRoute);
              },
              leftIcon: "assets/svg/language.svg",
            ),
          ],
        ),
      ),
    );
  }
}
