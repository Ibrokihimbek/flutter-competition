part of 'package:flutter_competition/features/main/prsentation/pages/home/home_page.dart';

mixin HomeMixin on State<HomePage> {
  late TextEditingController searchController;

  void initController() {
    searchController = TextEditingController();
  }

  void disposeController() {
    searchController.dispose();
  }
}
