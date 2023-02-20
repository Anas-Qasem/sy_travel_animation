import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math' as math;
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final double maxHeight;
  MainScreenBloc({
    required PageController pageController,
    required AnimationController animationController,
    required this.maxHeight,
  }) : super(MainScreenState(
          pageController: pageController,
          animationController: animationController,
        )) {
    on<PageMovedEvent>(_onPageMovedEvent);
    on<OpenMapEvent>(_onOpenMapEvent);
    on<VerticalDragUpdateEvent>(_onVerticalDragUpdateEvent);
    on<VerticalDragEndEvent>(_onVerticalDragEndEvent);
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

  FutureOr<void> _onOpenMapEvent(
      OpenMapEvent event, Emitter<MainScreenState> emit) {
    state.animationController.forward();
  }

  FutureOr<void> _onVerticalDragUpdateEvent(
      VerticalDragUpdateEvent event, Emitter<MainScreenState> emit) {
    state.animationController.value -= event.details.primaryDelta! / maxHeight;
  }

  FutureOr<void> _onVerticalDragEndEvent(
      VerticalDragEndEvent event, Emitter<MainScreenState> emit) async {
    if (state.animationController.isAnimating ||
        state.animationController.isCompleted) {
      return;
    }
    final double flingVelocity =
        event.details.velocity.pixelsPerSecond.dy / maxHeight;
    if (flingVelocity < 0.0) {
      state.animationController.fling(velocity: math.max(2.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      state.animationController.fling(velocity: math.min(-2.0, -flingVelocity));
    } else {
      state.animationController
          .fling(velocity: state.animationController.value < 0.5 ? -2.0 : 2.0);
    }
  }
}
