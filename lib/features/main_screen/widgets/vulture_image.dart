part of '../main_screen.dart';

class _VultureImage extends StatelessWidget {
  const _VultureImage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Positioned(
          left: (1.20 * MediaQuery.of(context).size.width) -
              (0.85 * state.offset),
          child: const _ImageV(),
        );
      },
    );
  }
}

class _ImageV extends StatelessWidget {
  const _ImageV();

  @override
  Widget build(BuildContext context) => IgnorePointer(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Image.asset(
            AppAssets.images.vulture,
            height: MediaQuery.of(context).size.height / 3.3,
          ),
        ),
      );
}
