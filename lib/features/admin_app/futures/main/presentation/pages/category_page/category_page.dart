import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_competition/core/utils/app_utils.dart';
import 'package:flutter_competition/features/admin_app/futures/main/presentation/bloc/category_bloc/category_admin_bloc.dart';
import 'package:flutter_competition/features/admin_app/futures/main/repository/categories_repository.dart';
import 'package:flutter_competition/router/app_routes.dart';

class CategoryPageAdmin extends StatelessWidget {
  const CategoryPageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryAdminBloc(
        categoryRepository: CategoryRepository(
          firebaseFirestore: FirebaseFirestore.instance,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.categoryAdminAdd);
                },
                icon: const Icon(Icons.add))
          ],
          elevation: 3,
        ),
        body: BlocBuilder<CategoryAdminBloc, CategoryAdminState>(
          builder: (context, state) {
            if (state is CategoryAdminInProgressByGet) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            if (state is CategoryAdminInSuccessByGet) {
              return ListView(
                children: List.generate(
                  state.categories.length,
                  (index) => Padding(
                    padding: AppUtils.kPaddingAll12,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 4,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      state.categories[index].imageUrl,
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          Text(state.categories[index].categoryName),
                          AppUtils.kBoxHeight10,
                          Text(state.categories[index].description),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
            if(state is CategoryAdminInFailureByGet){
              return Center(child: Text(state.errorText.toString()),);
            }
            return const Text("data");
          },
        ),
      ),
    );
  }
}
