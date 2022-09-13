import 'package:flutter/material.dart';

class LoginCustomUI extends StatelessWidget {
  const LoginCustomUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomPaint(
            painter: LoginPainter(),
            child: Container(),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(top: 1),
            color: Colors.white,
            height: 100,
            width: 100,
          )
        ],
      ),
    );
  }
}

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
    // Offset startPoint = Offset(0.0, size.height / 2);
    // Offset endPoint = Offset(size.width, size.height / 2);

    var path1 = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(0.0, 200)
      // ..quadraticBezierTo(size.width / 2, 250, size.width, 150)
      ..quadraticBezierTo(size.width / 2, 100.0, size.width, 200)
      // ..lineTo(size.width, 200)
      ..lineTo(size.width, 0.0);
    path1.close();

    canvas.drawPath(path1, paint1);
    var paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    var path2 = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(0.0, 200)
      // ..quadraticBezierTo(size.width / 2, 250, size.width, 150)
      ..quadraticBezierTo(size.width / 2, 100.0, size.width, 100)
      // ..lineTo(size.width, 200)
      ..lineTo(size.width, 0.0);
    path1.close();
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw false;
  }
}
