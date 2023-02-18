import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sy_travel_animation/features/main_screen/bloc/main_screen_bloc.dart';
import 'dart:math' as math;

import 'package:sy_travel_animation/utils/assets/app_assets.dart';
part './widgets/screen_content.dart';
part './widgets/travel_description.dart';

class LeopardScreen extends StatelessWidget {
  const LeopardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(bottom: 100),
          alignment: Alignment(-1.0 - (0.01 * state.offset), 0.0),
          child: const _ScreenContent(),
        );
      },
    );
  }
}
