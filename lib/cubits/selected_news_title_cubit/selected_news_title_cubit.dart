import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:echo_news_app/cubits/selected_news_title_cubit/selected_news_title_state.dart';

class SelectedNewsTitleCubit extends Cubit <SelectedNewsTitleState> {
  SelectedNewsTitleCubit() : super(InitialState());

  void getSelectedNewsTitle({String categoryName = "General"}) {
    emit(SuccessState(categoryName: categoryName));
  }
}
