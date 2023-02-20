part of '../main_screen.dart';

class _BaseCampLabel extends StatelessWidget {
  const _BaseCampLabel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        final double indexOfPage = math.max(0, 4 * state.page - 3);
        return AnimatedBuilder(
          animation: state.animationController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: indexOfPage,
                child: const Text(
                  "Base Camp",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Opacity(
                opacity: indexOfPage,
                child: Text(
                  "7:30 am",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: AppAssets.colors.lightGrey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          builder: (context, child) {
            return Positioned(
              right: 22 * indexOfPage,
              top: (1 - (state.animationController.value)) *
                  ((MediaQuery.of(context).size.height * 0.629) + 50),
              width: (MediaQuery.of(context).size.width - 80) / 3,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 117 * state.animationController.value),
                child: child!,
              ),
            );
          },
        );
      },
    );
  }
}
