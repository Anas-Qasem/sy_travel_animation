part of '../main_screen.dart';

class _BottomRow extends StatelessWidget {
  const _BottomRow();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, 0.85),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<MainScreenBloc, MainScreenState>(
              builder: (context, state) {
                return Opacity(
                  opacity: math.max(0, 4 * state.page - 3),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      foregroundColor: AppAssets.colors.lightGrey,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "ON MAP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
            BlocBuilder<MainScreenBloc, MainScreenState>(
              builder: (context, state) {
                return SmoothPageIndicator(
                  controller: state.pageController, // PageController
                  count: 2,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.white,
                    dotHeight: 8,
                    dotWidth: 8,
                  ), // your preferred effect
                  onDotClicked: (index) {
                    state.pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 850),
                      curve: Curves.easeInOut,
                    );
                  },
                );
              },
            ),
            const Icon(
              Icons.share,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
