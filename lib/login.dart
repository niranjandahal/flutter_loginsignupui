import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: const AssetImage('assets/image/login.png'),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
//1st container
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.lightBlueAccent.shade700,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

//2nd container
       
                Container(
                  padding: const EdgeInsets.only(left: 70, top: 25),
                  child: const Text(
                    "Niranjan portal",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              
            

//3rd container

SingleChildScrollView(
      child: Container(
              padding: const EdgeInsets.only(top: 365, left: 30, right: 30),
              child: Column(
                children: [
                  //1st text field
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email/username",
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: const Icon(Icons.email),
                        hintText: "Email adress",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
//2nd textfield
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: const Icon(Icons.vpn_key_rounded),
                        hintText: "Passsword",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
//1st button
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "forgot password",
                        style: const TextStyle(
                            fontSize: 16, decoration: TextDecoration.underline),
                      )),

                  const SizedBox(
                    height: 20,
                  ),
//4th container
//2nd button

                  Container(
                   
                    height: 45,
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: const TextStyle(fontSize: 20, color: Colors.black),
                        )),
                  ),

//5th container

                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text(
                          "Doesn't have an account?",
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        TextButton(
                            onPressed: () {

                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              "Register now",
                              style: const TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
),
          ],
        ),
      ),
    );
  }
}
