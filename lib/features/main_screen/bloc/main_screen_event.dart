part of 'main_screen_bloc.dart';

abstract class MainScreenEvent extends Equatable {
  const MainScreenEvent();
}

class PageMovedEvent extends MainScreenEvent {
  final double offset;
  final double page;

  const PageMovedEvent({
    required this.offset,
    required this.page,
  });
  @override
  List<Object?> get props => [
        offset,
        page,
      ];
}

class OpenMapEvent extends MainScreenEvent {
  const OpenMapEvent();
  @override
  List<Object?> get props => [];
}

class VerticalDragUpdateEvent extends MainScreenEvent {
  final DragUpdateDetails details;

  const VerticalDragUpdateEvent(this.details);
  @override
  List<Object?> get props => [details];
}

class VerticalDragEndEvent extends MainScreenEvent {
  final DragEndDetails details;

  const VerticalDragEndEvent(this.details);
  @override
  List<Object?> get props => [details];
}
