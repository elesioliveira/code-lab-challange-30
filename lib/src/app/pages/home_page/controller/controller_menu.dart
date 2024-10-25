import 'package:flutter/material.dart';

ValueNotifier<bool> isOpen = ValueNotifier<bool>(false);
ValueNotifier<String> isSelect = ValueNotifier<String>('');

void toggleMenuOpen() => isOpen.value = !isOpen.value;

void isSelectedMenu(String value) => isSelect.value = value;
