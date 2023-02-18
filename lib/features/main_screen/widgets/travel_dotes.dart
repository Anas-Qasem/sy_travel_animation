part of '../main_screen.dart';

class _TravelDotes extends StatelessWidget {
  const _TravelDotes();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        final double indexOfPage = math.max(0, 4 * state.page - 3);
        return Positioned(
          top: (MediaQuery.of(context).size.height * 0.629) + 52,
          width: MediaQuery.of(context).size.width,
          child: Opacity(
            opacity: indexOfPage,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _Dot(
                    margin: EdgeInsets.only(left: indexOfPage * 40),
                    color: Colors.white,
                  ),
                  _Dot(
                    margin: EdgeInsets.only(left: indexOfPage * 12),
                    color: Colors.transparent,
                    width: 6,
                    height: 6,
                  ),
                  _Dot(
                    margin: EdgeInsets.only(right: indexOfPage * 12),
                    color: Colors.transparent,
                    width: 6,
                    height: 6,
                  ),
                  _Dot(
                    margin: EdgeInsets.only(right: indexOfPage * 40),
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({
    this.height,
    this.width,
    required this.margin,
    required this.color,
  });
  final double? width;
  final double? height;
  final EdgeInsetsGeometry margin;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height ?? 10,
      width: width ?? 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1.2),
      ),
    );
  }
}
