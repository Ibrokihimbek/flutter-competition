import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/constants/image_constants.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/cubit/connectivity/connectivity_cubit.dart';

class NoInternetScreen extends StatelessWidget {
  final VoidCallback voidCallback;

  const NoInternetScreen({required this.voidCallback, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocListener<ConnectivityCubit, ConnectivityState>(
        listener: (context, state) {
          if (state.connectivityResult != ConnectivityResult.none) {
            voidCallback.call();
            Navigator.pop(context);
          }
        },
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    PngImage.logo,
                    fit: BoxFit.cover,
                    color: ThemeColors.light.primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
             const Text(
                "Internetingizni yoqing!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
