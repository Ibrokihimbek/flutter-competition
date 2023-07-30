import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/flash_bar/flash_bar.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/bloc/location_permission/location_permission_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/delivery_addresses/widgets/dialog_widget.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/profile_item.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/second_profile_item.dart';
import 'package:flutter_competition/router/app_routes.dart';
import 'package:lottie/lottie.dart';

class DeliveryAddressPage extends StatelessWidget {
  const DeliveryAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.77,
              child: ListView(
                children: [
                  SecondProfileItem(
                    rightIconSize: 28,
                    isRightIconHave: false,
                    rightIcon: "assets/svg/check_mark.svg",
                    title: "Current address",
                    onTap: () {},
                    leftIcon: "assets/svg/location.svg",
                  ),
                  ProfileItem(
                    rightIconSize: 28,
                    isRightIconHave: true,
                    rightIcon: "assets/svg/check_mark.svg",
                    title: "Current address",
                    subtitle: "NYC, Broadway ave 79",
                    onTap: () {},
                    leftIcon: "assets/svg/location.svg",
                  ),
                  ListView.builder(
                    primary: false,
                    itemCount: 5,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ProfileItem(
                        rightIcon: "assets/svg/check_mark.svg",
                        isRightIconHave: true,
                        title: "My Home",
                        subtitle: "Chilonzor Qator tol 9 mavze",
                        rightIconSize: 28,
                        onTap: () {},
                        leftIcon: "assets/svg/location.svg",
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          BlocListener<LocationPermissionBloc, LocationPermissionState>(
            listener: (context, state) {
              if (state.myPermissionStatus == MyPermissionStatus.loading) {
                showDialog(
                  barrierDismissible: false,
                  builder: (context) => LoadingDialog(
                    widget: Lottie.asset(LottieImages.locationLoading),
                  ),
                  context: context,
                );
              }
              if (state.myPermissionStatus == MyPermissionStatus.success) {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  Routes.addNewAddress,
                  arguments: state.latLongModel,
                );
              }
              if (state.myPermissionStatus == MyPermissionStatus.fail) {
                flashBarWidget(
                  title: "Not found permission and location",
                  context: context,
                  content: "Please check again",
                );
              }
            },
            child: Center(
              child: Padding(
                padding: AppUtils.kPaddingHor16Bot32,
                child: ElevatedButton(
                  child: const Text("Add new address"),
                  onPressed: () {
                    BlocProvider.of<LocationPermissionBloc>(context)
                        .add(const FetchCurrentLocationEvent());
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
