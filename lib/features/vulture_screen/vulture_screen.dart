import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sy_travel_animation/features/main_screen/bloc/main_screen_bloc.dart';
import 'package:sy_travel_animation/utils/assets/app_assets.dart';
import 'dart:math' as math;
part './widget/vulture_circle.dart';

class VultuerScreen extends StatelessWidget {
  const VultuerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: _VultureCircle());
  }
}
