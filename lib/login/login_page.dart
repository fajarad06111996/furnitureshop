import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furnitureshop/login/register_page.dart';
import 'package:furnitureshop/page/dash_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //untuk form key
  final _formKey = GlobalKey<FormState>();

  //objek untuk text field
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();

  //untuk validasi inputan
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress, // tipe input email
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.person,
          color: Colors.blue,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Email",
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        hintText: "Masukkan Email",
        hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );

    // untuk field password
    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      keyboardType: TextInputType.text,
      obscureText: true,
      onSaved: (value) {
        passController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.key,
          color: Colors.blue,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Password",
        labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        hintText: "Masukkan Password",
        hintStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );

    final tombolLogin = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashPage()),
          );
        },
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          'Masuk',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    final Isi = Center(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
              key: _formKey,
              child: Column(
                // tekan control+shift+R
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      'assets/gambar/clock.png',
                      fit: BoxFit.contain,
                    ),
                  ), //untuk menampilkan logo
                  SizedBox(height: 30),
                  emailField,
                  SizedBox(height: 20),
                  passField,
                  SizedBox(height: 20),
                  tombolLogin,
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Belum Punya Akun ?',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ));
                        },
                        child: Text(
                          'Daftar Disini',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
    return Scaffold(
      body: Isi,
    );
  }
}
