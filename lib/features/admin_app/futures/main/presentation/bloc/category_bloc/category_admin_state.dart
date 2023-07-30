// ignore_for_file: must_be_immutable

part of 'category_admin_bloc.dart';

@immutable
abstract class CategoryAdminState {}

class CategoryAdminInitial extends CategoryAdminState {}

/// category get state

class CategoryAdminInProgressByGet extends CategoryAdminState {}

class CategoryAdminInFailureByGet extends CategoryAdminState {
  String errorText;

  CategoryAdminInFailureByGet({required this.errorText});
}

class CategoryAdminInSuccessByGet extends CategoryAdminState {
  List<CategoryModel> categories;

  CategoryAdminInSuccessByGet({required this.categories});
}

/// category add state

class CategoryAdminInProgressByAdd extends CategoryAdminState {}

class CategoryAdminInFailureByAdd extends CategoryAdminState {
  String errorText;

  CategoryAdminInFailureByAdd({required this.errorText});
}

class CategoryAdminInSuccessByAdd extends CategoryAdminState {
}

/// category update

class CategoryAdminInProgressByUpdate extends CategoryAdminState {}

class CategoryAdminInFailureByUpdate extends CategoryAdminState {
  String errorText;

  CategoryAdminInFailureByUpdate({required this.errorText});
}

class CategoryAdminInSuccessByUpdate extends CategoryAdminState {
}

/// category delete state

class CategoryAdminInProgressByDelete extends CategoryAdminState {}

class CategoryAdminInFailureByDelete extends CategoryAdminState {
  String errorText;

  CategoryAdminInFailureByDelete({required this.errorText});
}

class CategoryAdminInSuccessByDelete extends CategoryAdminState {
}
