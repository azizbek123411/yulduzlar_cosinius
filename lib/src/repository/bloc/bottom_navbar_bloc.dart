import 'package:bloc/bloc.dart';

class Bottomnavbar extends Cubit<int>{
  Bottomnavbar():super(0);

  changingSelectedIndex(newIndex)=>emit(newIndex);
}