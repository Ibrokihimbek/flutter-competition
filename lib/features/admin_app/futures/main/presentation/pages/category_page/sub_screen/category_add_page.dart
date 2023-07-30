import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/core/widgets/custom_text_field.dart';
import 'package:flutter_competition/core/widgets/flash_bar/flash_bar.dart';
import 'package:flutter_competition/data/models/admin_category_model/category_model.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/bloc/category_bloc/category_admin_bloc.dart';
import 'package:flutter_competition/features/admin_app/futures/main/repository/categories_repository.dart';
import 'package:flutter_competition/services/file_uploder.dart';
import 'package:image_picker/image_picker.dart';

part 'package:flutter_competition/features/admin_app/futures/main/presentation/pages/category_page/mixin/category_add_mixin.dart';

class CategoryAdminAddPage extends StatefulWidget {
  const CategoryAdminAddPage({Key? key}) : super(key: key);

  @override
  State<CategoryAdminAddPage> createState() => _CategoryAdminAddPageState();
}

class _CategoryAdminAddPageState extends State<CategoryAdminAddPage>
    with CategoryAddMixin {
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

  final ImagePicker _picker = ImagePicker();
  String imageUrl = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryAdminBloc(categoryRepository: CategoryRepository(firebaseFirestore: FirebaseFirestore.instance)),
      child: BlocConsumer<CategoryAdminBloc, CategoryAdminState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Category Add"),
            ),
            body: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: AppUtils.kPaddingAll12,
                  sliver: SliverToBoxAdapter(
                    child: CustomTextField(
                      controller: nameController,
                      onChanged: (v) {},
                      hintText: "category name",
                      contentPadding: AppUtils.kPaddingAll12,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: AppUtils.kPaddingAll12,
                  sliver: SliverToBoxAdapter(
                    child: CustomTextField(
                      controller: descController,
                      onChanged: (v) {},
                      hintText: "description",
                      contentPadding: AppUtils.kPaddingAll12,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: AppUtils.kPaddingAll12,
                  sliver: SliverToBoxAdapter(
                    child: ElevatedButton(
                      onPressed: () async {
                        _showPicker(context);
                      },
                      child: const Text('select image'),
                    ),
                  ),
                ),
                SliverPadding(
                  padding: AppUtils.kPaddingAll12,
                  sliver: SliverToBoxAdapter(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (imageUrl.isNotEmpty) {
                          CategoryModel categoryModel = CategoryModel(
                            categoryId: "",
                            categoryName: nameController.text,
                            description: descController.text,
                            imageUrl: imageUrl,
                            createdAt: DateTime.now().toString(),
                          );
                          BlocProvider.of<CategoryAdminBloc>(context).add(
                            AddCategoryEvent(categoryModel: categoryModel),
                          );

                        } else {
                          await flashBarWidget(
                              context: context,
                              title: 'An error occurred',
                              content: 'Rasm Tanlang');
                        }
                      },
                      child: const Text('Add Category'),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {
          if (state is CategoryAdminInSuccessByAdd) {
            BlocProvider.of<CategoryAdminBloc>(context).add(FetchCategory());
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text("Gallery"),
                    onTap: () {
                      _getFromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    _getFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  _getFromGallery() async {
    XFile? pickedFile = await _picker.pickImage(
      maxWidth: 1000,
      maxHeight: 1000,
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      if (!mounted) return;
      imageUrl = await FileUploader.imageUploader(pickedFile);
      setState(() {});
    }
  }

  _getFromCamera() async {
    XFile? pickedFile = await _picker.pickImage(
      maxWidth: 1920,
      maxHeight: 2000,
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      if (!mounted) return;
      imageUrl = await FileUploader.imageUploader(pickedFile);
      setState(() {});
    }
  }
}
