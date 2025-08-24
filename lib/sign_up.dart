import 'package:flutter/material.dart';
import 'package:flutter_gsg/Widgets/CustomTextField.dart';
import 'package:flutter_gsg/sign_in.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Routes/routes.dart';
import 'home.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // to know the state of the widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff827BEB),
      ),
      // bottomNavigationBar: BottomNavigationBar(currentIndex: 0,
      //     items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
      // ]),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset("assets/sign_up2.png", width: 300, height: 300),

                  CustomTextField(
                    controller: nameController,
                    labelText: "Name",
                    validator: (name) {
                      if (name!.length >= 3 && name.isNotEmpty) {
                        return null;
                      }
                      return "Enter A Valid Name";
                    },
                  ),
                  CustomTextField(
                    validator: (email) {
                      if (!email!.contains("@")) {
                        return "Email Must Contain @";
                      }
                      if(!email.contains(".")){
                        return  "Email Must Contain .";
                      }
                      return null;
                    },
                    controller: emailController,
                    labelText: "Email",
                  ),
                  CustomTextField(
                    validator: (password){
                      if(password!.isEmpty){
                        return "You Must Fill This Field";
                      }
                      if(password.length <= 8){
                        return "Password Is Weak";

                      }

                     return null;
                    },
                    controller: passwordController,
                    isPassword: true,
                    labelText: "Password",
                  ),
                  CustomTextField(
                    validator: (confirm){
                      if(confirm!.isEmpty){return "You Must Fill The Field";}
                      if(confirm != passwordController.text){return "Passwords Must Match" ;}

                      return null;


                    },
                    controller: confirmPasswordController,
                    isPassword: true,
                    labelText: "Confirm Password",
                  ),
                  CustomTextField(
                    validator: (phone){
                      if(phone!.startsWith("+970")){
                        return null;
                      }
                      return "Phone Number Must Start With +970";
                    },
                    controller: phoneController,
                    labelText: "Phone Number",
                  ),
                  TextButton(
                    child: Text(
                      "Already Have An Account?",
                      style: TextStyle(
                        color: Color(0xff827BEB),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                      Routes.signIn
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                  _signUp(context);
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

  _signUp (BuildContext context){
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(
        context,
        Routes.home
      );
    } else {
      showSnackBar(context, "Enter Valid Credentails");
    }
  }
  }

