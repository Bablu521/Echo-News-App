abstract class SelectedNewsTitleState {}

class InitialState extends SelectedNewsTitleState {}

class SuccessState extends SelectedNewsTitleState {
  final String categoryName;
  SuccessState({required this.categoryName});
}
