import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/theme/colors/app_colors.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/category_page.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/cubit/connectivity/connectivity_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/bloc/cubit/tab/tab_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/pages/cart/pages/cart_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/home/home_page.dart';
import 'package:flutter_competition/features/main/prsentation/pages/profile/profile_page.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter_competition/router/app_routes.dart';

class MainScreenAdmin extends StatefulWidget {
  const MainScreenAdmin({Key? key}) : super(key: key);

  @override
  State<MainScreenAdmin> createState() => _MainScreenAdminState();
}

class _MainScreenAdminState extends State<MainScreenAdmin> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      const CategoryPageAdmin(),
      // const CartPage(),
      // const ProfilePage()
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
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
                  BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Product"),
                  BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
