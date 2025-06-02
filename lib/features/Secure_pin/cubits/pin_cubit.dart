import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groww_flutter/features/Secure_pin/cubits/pin_state.dart';

class PinCubit extends Cubit<PinState> {
  PinCubit() : super(PinInitialState()) {
    setInitialList();
  }

  List<String> password = ['', '', '', ''];

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

  void addPassword(String key, VoidCallback onSuccess) {
    if (key == '⌫') {
      int index = getPsswordLength();
      if (index != -1) {
        password[index] = '-1';
        emit(PinUpdateState());
      }
      return;
    }
    int keyIndex = getNextPsswordKeyIndex();
    if (keyIndex != -1) {
      password[keyIndex] = key;
      emit(PinUpdateState());
      if (keyIndex == 3) {
        bool passwordIs = isPasswordCorrect();
        if (passwordIs) {
          onSuccess();
        } else {
          setInitialList(); // for resert
        }
      }
    }
  }

  bool isPasswordCorrect() {
    for (int i = 0; i < password.length; i++) {
      if (password[i] != '1') {
        return false;
      }
    }
    return true;
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
      password[i] = '-1';
    }
  }
}
