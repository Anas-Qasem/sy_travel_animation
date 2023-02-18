part of '../main_screen.dart';

class _DistanceLabel extends StatelessWidget {
  const _DistanceLabel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        final double indexOfPage = math.max(0, 4 * state.page - 3);
        return Positioned(
          top: (MediaQuery.of(context).size.height * 0.629) + 85,
          width: MediaQuery.of(context).size.width,
          child: Opacity(
            opacity: indexOfPage,
            child: Center(
              child: Text(
                "72 km",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppAssets.colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
