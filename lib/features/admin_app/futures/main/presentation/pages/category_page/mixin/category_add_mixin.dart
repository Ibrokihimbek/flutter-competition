part of 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/sub_screen/category_add_page.dart';


mixin CategoryAddMixin on State<CategoryAdminAddPage> {
  late TextEditingController nameController;

  void initController() {
    nameController = TextEditingController();
  }

  void disposeController() {
    nameController.dispose();
  }
}
