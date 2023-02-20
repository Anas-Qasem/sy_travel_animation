part of '../main_screen.dart';

class _TravelDetailsDescription extends StatelessWidget {
  const _TravelDetailsDescription();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return AnimatedBuilder(
          animation: state.animationController,
          child: Opacity(
            opacity: math.max(0, 4 * state.page - 3),
            child: const Text(
              "Travel Details",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          builder: (context, child) {
            return Positioned(
              left: 22 + (MediaQuery.of(context).size.width - state.offset),
              top: (MediaQuery.of(context).size.height * 0.629) *
                  (1 - state.animationController.value),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 65 * state.animationController.value),
                child: child!,
              ),
            );
          },
        );
      },
    );
  }
}
