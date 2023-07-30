import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/bloc/location_permission/location_permission_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/delivery_addresses/widgets/dialog_widget.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/widgets/profile_item.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/widgets/second_profile_item.dart';

class DeliveryAddressPage extends StatefulWidget {
  const DeliveryAddressPage({Key? key}) : super(key: key);

  @override
  State<DeliveryAddressPage> createState() => _DeliveryAddressPageState();
}

class _DeliveryAddressPageState extends State<DeliveryAddressPage> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Delivery address"),
      ),
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
                // showDialog(
                //   barrierDismissible: false,
                //   builder: (context) => LoadingDialog(
                //     // widget: Lottie.asset(AppIcons.locationLoading),
                //   ),
                //   context: context,
                // );
              }
              if (state.myPermissionStatus == MyPermissionStatus.success) {
                Navigator.pop(context);
                // Navigator.pushNamed(
                //   context,
                //   addNewAddressRoute,
                //   arguments: state.latLongModel,
                // );
              }
              if (state.myPermissionStatus == MyPermissionStatus.fail) {
                // MyUtils.showInfoSnackBar(context, "Not found permission and location");
              }
            },
            child:
          Center(
            child: Padding(
                padding: AppUtils.kPaddingHor16Bot32,
                child: ElevatedButton(
                  child: const Text("Add new address"),
                  onPressed: () {},
                )),
          ),
          ),
        ],
      ),
    );
  }
}
