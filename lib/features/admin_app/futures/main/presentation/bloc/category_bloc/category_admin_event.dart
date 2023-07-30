// ignore_for_file: must_be_immutable

part of 'category_admin_bloc.dart';

@immutable
abstract class CategoryAdminEvent {}

class AddCategoryEvent extends CategoryAdminEvent {
  CategoryModel categoryModel;

  AddCategoryEvent({required this.categoryModel});
}


class UpdateCategoryEvent extends CategoryAdminEvent {
  CategoryModel categoryModel;

  UpdateCategoryEvent({required this.categoryModel});
}

class DeleteCategoryEvent extends CategoryAdminEvent {
  String docId;

  DeleteCategoryEvent({required this.docId});
}

class FetchCategory extends CategoryAdminEvent{}