part of 'domains/_index.dart';

class Elvbutton extends StatelessWidget {
  final String text;
  const Elvbutton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: Colors.blue.shade800),
      child: Text(text),
    );
  }
}

class MyOutlineButoon extends StatelessWidget {
  final String text;
  final Widget onpressed;
  const MyOutlineButoon({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        window.open('https://www.instagram.com/mambokuliner/', 'newtab');
      },
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          side: const BorderSide(color: Colors.white, width: 2)),
      child: Text(
        text,
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  final String text;
  final Widget onpressed;
  const WhiteButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => onpressed,
          )),
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(), backgroundColor: Colors.white, foregroundColor: Colors.blue.shade900),
      child: Text(text),
    );
  }
}
