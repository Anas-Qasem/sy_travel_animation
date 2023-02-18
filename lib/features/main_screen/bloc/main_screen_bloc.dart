import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc({required PageController pageController})
      : super(MainScreenState(pageController: pageController)) {
    on<PageMovedEvent>(_onPageMovedEvent);
  }

  FutureOr<void> _onPageMovedEvent(
      PageMovedEvent event, Emitter<MainScreenState> emit) {
    emit(
      state.copyWith(
        page: event.page,
        offset: event.offset,
      ),
    );
  }
}
