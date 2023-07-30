import 'package:flutter/material.dart';
import 'package:flutter_competition/router/app_routes.dart';

class CategoryPageAdmin extends StatelessWidget {
  const CategoryPageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        actions: [
          IconButton(onPressed: (){
          Navigator.pushNamed(context, Routes.categoryAdminAdd);
          }, icon: const Icon(Icons.add))
        ],
        elevation: 3,
      ),
      body: Container(),
    );
  }
}
