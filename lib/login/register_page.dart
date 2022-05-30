import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //untuk form key
  final _formKey = GlobalKey<FormState>();

  //objek untuk text field
  final TextEditingController namaController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController telponController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final namaField = TextFormField(
      autofocus: false,
      controller: namaController,
      keyboardType: TextInputType.text, // tipe input email
      onSaved: (value) {
        namaController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Nama",
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        hintText: "Masukkan Nama",
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

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress, // tipe input email
      onSaved: (value) {
        namaController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Email",
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
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

    final telponField = TextFormField(
      autofocus: false,
      controller: telponController,
      keyboardType: TextInputType.number, // tipe input email
      onSaved: (value) {
        namaController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Telepon",
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        hintText: "Masukkan Telepon",
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

    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword, // tipe input email
      onSaved: (value) {
        namaController.text = value!;
      },
      textInputAction: TextInputAction.next,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        labelText: "Password",
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
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

    final tombolDaftar = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: null,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          'Daftar',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.blue,
          icon: Icon(Icons.arrow_back),
        ),
        // iconTheme: Icon(),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Container(
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("Registrasi Akun",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ), //untuk menampilkan logo
                    SizedBox(height: 20),
                    namaField,
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    telponField,
                    SizedBox(height: 20),
                    passField,
                    SizedBox(height: 20),
                    tombolDaftar,
                    SizedBox(height: 20),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
