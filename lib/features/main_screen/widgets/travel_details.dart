part of '../main_screen.dart';

class _TravelDetailsDescription extends StatelessWidget {
  const _TravelDetailsDescription();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Positioned(
          left: 22 + (MediaQuery.of(context).size.width - state.offset),
          top: MediaQuery.of(context).size.height * 0.629,
          child: Opacity(
            opacity: math.max(0, 4 * state.page - 3),
            child: const Text(
              "Travel Details",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}
