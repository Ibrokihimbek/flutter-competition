import 'package:flutter/material.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';

part 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/mixin/category_add_mixin.dart';

class CategoryAdminAddPage extends StatefulWidget {
  const CategoryAdminAddPage({Key? key}) : super(key: key);

  @override
  State<CategoryAdminAddPage> createState() => _CategoryAdminAddPageState();
}

class _CategoryAdminAddPageState extends State<CategoryAdminAddPage> with CategoryAddMixin {
  @override
  void initState() {
    super.initState();
    initController();
  }
  @override
  void dispose() {
    super.dispose();
    disposeController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Add"),
      ),
      body: Column(
        children: [
          CustomTextField(
            controller: nameController,
            onChanged: (v) {},
            hintText: "category name",
          ),
        ],
      ),
    );
  }
}
