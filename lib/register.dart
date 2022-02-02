import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: Container(

        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/register.png'),fit: BoxFit.cover),
      ),

        child: ListView(
          children: [
            
            
            //1st container

            Container(
              padding: EdgeInsets.only(left: 75,top: 40,),
              child: Text("Niranjan Portal",style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.w700),),
            ),

            SizedBox(height: 120,),

            //2nd contianer

            Container(
              padding: EdgeInsets.only(left: 80,),
              child: Text("Create new account",style: TextStyle(color: Colors.lightBlueAccent.shade700,fontWeight: FontWeight.bold,fontSize: 20,),),
            ),

            //3rd container

            Container(
              padding: EdgeInsets.only(left: 30,top: 30,right: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "full Username",
                  prefixIcon: Icon(Icons.person),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Full Username",
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8))),
                ),

              ),

              //4th container 
              Container(
                padding: EdgeInsets.only(left: 30,top: 30,right: 30),
                 child: TextField(
                decoration: InputDecoration(
                  labelText: "Email Adress",
                  prefixIcon: Icon(Icons.email),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email Adress",
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8))),
                ),
                
              ),
//5th container

              Container(
                padding: EdgeInsets.only(left: 30,top: 30,right: 30),
                 child: TextField(
                   obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.vpn_key_rounded),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8))),
                ),
                
              ),

//6th continer

                            Container(
                padding: EdgeInsets.only(left: 30,top: 30,right: 30),
                 child: TextField(
                   obscureText: true,
                decoration: InputDecoration(
                  labelText: "confirm Password",
                  prefixIcon: Icon(Icons.vpn_key_rounded),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8))),
                ),
                
              ),

              //7th container


              Container(
                height: 60,
                width: 50,
                padding: EdgeInsets.only(left: 30,right: 30,top: 20,),
                child: ElevatedButton(onPressed: (){}, child: Text("Register")),
              ),

              //8th contain
              Container(
                padding: EdgeInsets.only(left: 75, top: 10,),
                child: Row(
                  children: [
                    Text("Already have an account?",
                    style: TextStyle(fontSize: 15),),

                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    }, child: Text("Login")),


                  ],
                ),

              ),

           






          ],
        ),
      ),
      
    );
  }
}