part of 'pages.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Widget textForgot() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Forgot Password',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        Container(
          width: 285,
          child: Text(
            'Enter the email address associated with your account',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget buildBackBtn() {
    return Column(
      children: <Widget>[
        // Tadinya mau ganti Column menjadi Stack, tapi gagal
        // Tadinya mau ganti Container menjadi Positioned, tapi gagal
        Container(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 40,
            onPressed: () {
              Navigator.pushNamed(context, '/SignInPage');
            },
          ),
        ),
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Your Email',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
        SizedBox(height: 10),
        Container(
          width: 325,
          height: 40,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color(260868),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.yellow),
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 4, bottom: 4),
                prefixIcon: Icon(Icons.email, color: Colors.white),
                hintText: 'Type your email',
                hintStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                )),
          ),
        )
      ],
    );
  }

  Widget buildSendBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: 300,
      child: RaisedButton(
        // onPressed: () => print('Send Pressed'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Congratulation'),
                content: Text('Your password has been reset'),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignInPage');
                    },
                    child: Text('Done'),
                  )
                ],
              );
            },
          );
        },
        elevation: 0,
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xffFFC700),
        child: Text(
          'SEND',
          style: TextStyle(
              color: Color(0xff260868),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backGroundColor,
        child: Column(
          children: <Widget>[
            buildBackBtn(),
            Icon(
              Icons.lock,
              color: Color(0xffFFC700),
              size: 250,
            ),
            textForgot(),
            SizedBox(height: 40),
            buildEmail(),
            SizedBox(height: 10),
            buildSendBtn(),
          ],
        ),
      ),
    );
  }
}
