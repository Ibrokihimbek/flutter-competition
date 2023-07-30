import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/features/main/prsentation/cubit/connectivity/connectivity_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/cubit/tab/tab_cubit.dart';
import 'package:flutter_competition/features/main/prsentation/widgets/bottom_navigation_bar_item.dart';

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
      // HomeScreen(),
      // OrdersScreen(),
      // CartScreen(),
      // SearchScreen(),
      // ProfileScreen(),
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
          // Navigator.pushNamed(context, noInternetRoute, arguments: _init);
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
                currentIndex: index,
                // selectedItemColor: MyColors.greyscale900,
                // unselectedItemColor: MyColors.greyscale400,
                // selectedFontSize: 16.sp,
                // unselectedFontSize: 16.sp,
                onTap: (value) {
                  context.read<TabCubit>().changeTabState(value);
                },
                items: [
                  BottomNavigationBarItemWidget(icon: "home"),
                  BottomNavigationBarItemWidget(icon: "orders"),
                  BottomNavigationBarItemWidget(icon: "cart"),
                  BottomNavigationBarItemWidget(icon: "search"),
                  BottomNavigationBarItemWidget(icon: "profile"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
