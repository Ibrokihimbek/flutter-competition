part of 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/sub_screen/category_add_page.dart';


mixin CategoryAddMixin on State<CategoryAdminAddPage> {
  late TextEditingController nameController;
  late TextEditingController descController;

  void initController() {
    nameController = TextEditingController();
    descController = TextEditingController();
  }

  void disposeController() {
    nameController.dispose();
    descController.dispose();
  }
}
