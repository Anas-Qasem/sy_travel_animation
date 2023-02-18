part of '../main_screen.dart';

class _AppBar extends StatelessWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 0),
        child: Row(
          children: const [
            Text(
              "SY",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Spacer(),
            Icon(Icons.menu)
          ],
        ),
      ),
    );
  }
}
