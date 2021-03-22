part of 'pages.dart';

class SignUpCompletePage extends StatefulWidget {
  @override
  _SignUpCompletePageState createState() => _SignUpCompletePageState();
}

class _SignUpCompletePageState extends State<SignUpCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gambar PNG
            Container(
              // alignment: Alignment.center,
              color: Colors.transparent,
              width: 200,
              // height: 290,
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage('assets/sign_up_complete.png'),
              ),
            ),
            SizedBox(height: 20),
            // Teks 'Yeay Complete'
            Text(
              'Yeay! Complete',
              style: GoogleFonts.poppins(
                color: Color(0xff020202),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            // Teks 'now you are able ... '
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 200),
              child: Text(
                'Now you are able to order somefood as a self reward',
                style: GoogleFonts.poppins(
                  color: Color(0xff8D92A3),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            // Tombol Find
            Container(
              width: 200,
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUpPage');
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: mainColor,
                child: Text(
                  'Find Foods',
                  style: GoogleFonts.poppins(
                    color: Color(0xff020202),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
