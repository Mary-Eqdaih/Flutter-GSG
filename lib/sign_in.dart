import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/CustomTextField.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Routes/routes.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});
  static const String userCredentialsKey = 'userCredentials';
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailcont = TextEditingController();

  TextEditingController passwordcont = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // final keyword let me know the type of the var using type inference
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff827BEB),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset("assets/sign_in2.png", width: 300, height: 300),
                  CustomTextField(
                    labelText: "Your Email",
                    controller: emailcont,
                    validator: (email) {
                      if (!email!.contains("@")) {
                        return "Email Must Contain @";
                      }
                      if (!email.contains(".")) {
                        return "Email Must Contain .";
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    validator: (password) {
                      if (password!.isEmpty) {
                        return "You Must Fill This Field";
                      }
                      if (password.length <= 8) {
                        return "Password Is Weak";
                      }

                      return null;
                    },
                    labelText: "Your Password",
                    isPassword: true,
                    controller: passwordcont,
                    keyboardType: TextInputType.emailAddress,
                  ),

                  TextButton(
                    child: Text(
                      "You Dont Have An Account?",
                      style: TextStyle(
                        color: Color(0xff827BEB),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, Routes.signUp);
                    },
                  ),

                  ElevatedButton(
                    onPressed: () {
                      _login(context);
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context)async {
    if (_formKey.currentState!.validate()) {

      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => Home(email: emailcont.text)),
      // );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(SignIn.userCredentialsKey, emailcont.text);
      Navigator.pushReplacementNamed(
        context,
        Routes.home,
        arguments: emailcont.text,
      );
    } else {
      showSnackBar(context, "Enter Valid Credentials");
    }
  }
}

// High Level Function
void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
      duration: Duration(milliseconds: 500),
    ),
  );


}
