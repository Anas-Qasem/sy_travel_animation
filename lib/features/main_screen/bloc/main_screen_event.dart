part of 'main_screen_bloc.dart';

abstract class MainScreenEvent extends Equatable {}

class PageMovedEvent extends MainScreenEvent {
  final double offset;
  final double page;

  PageMovedEvent({
    required this.offset,
    required this.page,
  });
  @override
  List<Object?> get props => [
        offset,
        page,
      ];
}
