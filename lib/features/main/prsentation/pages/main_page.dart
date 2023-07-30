import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/features/main/prsentation/cubit/connectivity/connectivity_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/cubit/tab/tab_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/pages/cart/pages/cart_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/home/pages/home_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/prsentation/pages/profile_page.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter_competition/router/app_routes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      const HomePage(),
      const CartPage(),
      const ProfilePage()
    ];
    super.initState();
  }

  _init() async {
    debugPrint("INTERNET TURNED ON CALL ANY API");
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        if (state.connectivityResult == ConnectivityResult.none) {
          Navigator.pushNamed(context, Routes.noInternet, arguments: _init);
        }
      },
      child: BlocProvider(
        create: (context) => TabCubit(),
        child: BlocBuilder<TabCubit, TabsState>(
          builder: (context, state) {
            var index = context.watch<TabCubit>().state.currentPage;
            return Scaffold(
              body: IndexedStack(index: index, children: screens),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: ThemeColors.light.white,
                currentIndex: index,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.black,
                // selectedFontSize: 16.sp,
                // unselectedFontSize: 16.sp,
                onTap: (value) {
                  context.read<TabCubit>().changeTabState(value);
                },
                items: [
                  BottomNavigationBarItemWidget(
                      icon: "home", kmn: index == 0 ? true : false),
                  BottomNavigationBarItemWidget(icon: "cart", kmn: index==1?true:false),
                  BottomNavigationBarItemWidget(
                      icon: "profile", kmn: index == 2 ? true : false),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
