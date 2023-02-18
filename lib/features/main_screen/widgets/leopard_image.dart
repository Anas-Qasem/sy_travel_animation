part of '../main_screen.dart';

class _LeopardImage extends StatelessWidget {
  const _LeopardImage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        return Positioned(
          left: -0.85 * state.offset,
          width: MediaQuery.of(context).size.width * 1.6,
          child: const _ImageL(),
        );
      },
    );
  }
}

class _ImageL extends StatelessWidget {
  const _ImageL();

  @override
  Widget build(BuildContext context) =>
      IgnorePointer(child: Image.asset(AppAssets.images.loepard));
}
