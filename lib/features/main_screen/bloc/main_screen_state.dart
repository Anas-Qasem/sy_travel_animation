part of 'main_screen_bloc.dart';

class MainScreenState extends Equatable {
  final double offset;
  final double page;
  final PageController pageController;
  const MainScreenState({
    required this.pageController,
    this.offset = 0,
    this.page = 0,
  });
  @override
  List<Object?> get props => [offset, page, pageController];

  MainScreenState copyWith({
    double? offset,
    double? page,
    PageController? pageController,
  }) =>
      MainScreenState(
        offset: offset ?? this.offset,
        page: page ?? this.page,
        pageController: pageController ?? this.pageController,
      );
}
