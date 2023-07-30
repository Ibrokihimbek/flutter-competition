import 'package:bloc/bloc.dart';
import 'package:flutter_competition/data/models/admin_category_model/category_model.dart';
import 'package:flutter_competition/data/models/my_response.dart';
import 'package:flutter_competition/features/admin_app/futures/main/repository/categories_repository.dart';
import 'package:meta/meta.dart';

part 'category_admin_event.dart';

part 'category_admin_state.dart';

class CategoryAdminBloc extends Bloc<CategoryAdminEvent, CategoryAdminState> {
  CategoryAdminBloc({required this.categoryRepository})
      : super(CategoryAdminInitial()) {
    on<AddCategoryEvent>(addCategory);
    on<UpdateCategoryEvent>(updateCategory);
    on<DeleteCategoryEvent>(deleteCategory);
    on<FetchCategory>(fetchCategory);
  }

  CategoryRepository categoryRepository;

  addCategory(AddCategoryEvent event, Emitter<CategoryAdminState> emit) async {
    emit(CategoryAdminInProgressByAdd());
    categoryRepository.addCategory(categoryModel: event.categoryModel);
    emit(CategoryAdminInSuccessByAdd());
  }

  updateCategory(
      UpdateCategoryEvent event, Emitter<CategoryAdminState> emit) async {
    emit(CategoryAdminInProgressByUpdate());
    categoryRepository.updateCategory(categoryModel: event.categoryModel);
    emit(CategoryAdminInSuccessByUpdate());
  }

  deleteCategory(
      DeleteCategoryEvent event, Emitter<CategoryAdminState> emit) async {
    emit(CategoryAdminInProgressByDelete());
    categoryRepository.deleteCategory(docId: event.docId);
    emit(CategoryAdminInSuccessByDelete());
  }

  fetchCategory(FetchCategory event, Emitter<CategoryAdminState> emit) async {
    emit(CategoryAdminInProgressByGet());
    MyResponse myResponse = MyResponse(errorMessage: '');
    categoryRepository.getCategories().listen((event) {
      myResponse.data = event;
    });
    if (myResponse.errorMessage.isNotEmpty) {
      emit(CategoryAdminInSuccessByGet(categories: myResponse.data));
    } else {
      emit(CategoryAdminInFailureByGet(errorText: myResponse.errorMessage));
    }
  }
}
