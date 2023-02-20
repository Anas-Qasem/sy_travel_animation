import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sy_travel_animation/features/leopard_screen/leopard_screen.dart';
import 'package:sy_travel_animation/features/vulture_screen/vulture_screen.dart';
import 'package:sy_travel_animation/utils/assets/app_assets.dart';
import 'dart:math' as math;
import 'bloc/main_screen_bloc.dart';
part './widgets/leopard_image.dart';
part './widgets/vulture_image.dart';
part './widgets/app_bar.dart';
part './widgets/bottom_row.dart';
part './widgets/title_arrow.dart';
part './widgets/travel_details.dart';
part './widgets/start_camp_label.dart';
part './widgets/base_camp_label.dart';
part './widgets/distance_label.dart';
part './widgets/travel_dotes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final PageController _pageController;
  late final MainScreenBloc _mainScreenBloc;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _mainScreenBloc = MainScreenBloc(
      pageController: _pageController,
      animationController: _animationController,
      maxHeight: WidgetsBinding.instance.window.physicalSize.height * 0.175,
    );
    _pageController.addListener(() {
      _mainScreenBloc.add(
        PageMovedEvent(
          offset: _pageController.offset,
          page: _pageController.page ?? 0,
        ),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenBloc>(
      create: (context) => _mainScreenBloc,
      child: Scaffold(
        body: GestureDetector(
          onVerticalDragEnd: (details) {
            if (_pageController.page == 1) {
              _mainScreenBloc.add(VerticalDragEndEvent(details));
            }
          },
          onVerticalDragUpdate: (details) {
            if (_pageController.page == 1) {
              _mainScreenBloc.add(VerticalDragUpdateEvent(details));
            }
          },
          child: SafeArea(
            bottom: false,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                PageView(
                  padEnds: false,
                  controller: _pageController,
                  physics: const ClampingScrollPhysics(),
                  children: const [
                    LeopardScreen(),
                    VultuerScreen(),
                  ],
                ),
                const _LeopardImage(),
                const _VultureImage(),
                const _AppBar(),
                const _BottomRow(),
                _TitleArrow(animationController: _animationController),
                const _TravelDetailsDescription(),
                const _StartCampLabel(),
                const _BaseCampLabel(),
                const _DistanceLabel(),
                const _TravelDotes(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
