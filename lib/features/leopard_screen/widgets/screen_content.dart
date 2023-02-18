part of '../leopard_screen.dart';

class _ScreenContent extends StatelessWidget {
  const _ScreenContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1.08,
              height: MediaQuery.of(context).size.width / 1.88,
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "72",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ),
          const SizedBox(height: 35),
          const _TravelDescription(),
        ],
      ),
    );
  }
}
