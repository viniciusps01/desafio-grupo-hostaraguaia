part of 'home_page.dart';

class _Button extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool enabled;

  const _Button({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        shape: const StadiumBorder(),
        minimumSize: const Size(double.infinity, 10),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      onPressed: onPressed,
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
