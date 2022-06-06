import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'appcubit_state.dart';

class AppcubitCubit extends Cubit<AppcubitState> {
  AppcubitCubit() : super(AppcubitInitial());

  static AppcubitCubit get(context) => BlocProvider.of(context);
  bool selectedCard1 = false;
  bool selectedCard2 = false;
  void selectionCard1() {
    selectedCard1 = true;
    selectedCard2 = false;
    emit(SlectionCard1state());
  }

  void selectionCard2() {
    selectedCard1 = false;
    selectedCard2 = true;
    emit(SlectionCard2state());
  }

  int selected = 0;
  bool isSelected = false;
  void homeSelection(int value) {
    selected = value;
    isSelected = true;
    emit(HomeSlectionCardstate());
  }
}
