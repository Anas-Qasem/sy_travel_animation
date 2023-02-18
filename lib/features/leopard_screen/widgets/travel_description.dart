part of '../leopard_screen.dart';

class _TravelDescription extends StatelessWidget {
  const _TravelDescription();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
            return Opacity(
              opacity: math.max(0, 1 - 2.5 * state.page),
              child: const Text(
                "Travel Description",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
            return Opacity(
              opacity: math.max(0, 1 - 2.5 * state.page),
              child: SizedBox(
                width: 350,
                child: Text(
                  "The leopard is distinguished by its well-camouflaged fur, opportunistic hunting behavior, broad diet, and strength.",
                  style: TextStyle(
                    color: AppAssets.colors.lightGrey,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
