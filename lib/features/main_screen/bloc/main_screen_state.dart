part of 'main_screen_bloc.dart';

class MainScreenState extends Equatable {
  final double offset;
  final double page;
  final PageController pageController;
  final AnimationController animationController;
  const MainScreenState({
    required this.pageController,
    required this.animationController,
    this.offset = 0,
    this.page = 0,
  });
  @override
  List<Object?> get props => [
        offset,
        page,
        pageController,
        animationController,
      ];

  MainScreenState copyWith({
    double? offset,
    double? page,
    PageController? pageController,
    AnimationController? animationController,
  }) =>
      MainScreenState(
        offset: offset ?? this.offset,
        page: page ?? this.page,
        pageController: pageController ?? this.pageController,
        animationController: animationController ?? this.animationController,
      );
}
