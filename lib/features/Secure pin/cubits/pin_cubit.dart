import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/Secure%20pin/cubits/pin_state.dart';

class PinCubit extends Cubit<PinState> {
  PinCubit() : super(PinInitialState()) {
    setInitialList();
  }

  List<String> password = [];

  final List<String> keys = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0',
    '⌫'
  ];

  void addPassword(String key) {
    if (key == '⌫') {
      int index = getPsswordLength();
      password[index] = '-1';
      return;
    }
    int keyIndex = getNextPsswordKeyIndex();
    if (keyIndex != -1) {
      password[keyIndex] = key;
      emit(PinUpdateState());
    }
  }

  int getNextPsswordKeyIndex() {
    for (var i = 0; i < 4; i++) {
      if (password[i] == '-1') {
        return i;
      }
    }
    return -1;
  }

  int getPsswordLength() {
    for (var i = 3; i >= 0; i--) {
      if (password[i] != '-1') {
        return i;
      }
    }
    return -1;
  }

  void setInitialList() {
    for (var i = 0; i < 4; i++) {
      password.add('-1');
    }
  }
}
