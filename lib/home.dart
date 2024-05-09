import 'package:firebase_cli/textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  Future<void> sendData() async{
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String name = nameController.text.trim();


    if(email.isNotEmpty && password.isNotEmpty && name.isNotEmpty){
      try{
        Map<String,dynamic>users={
          'email': emailController.text,
          'password': passwordController.text,
          'name': nameController.text
        };

        CollectionReference collectionReference = FirebaseFirestore.instance.collection('users');
        collectionReference.add(users);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added Successfully")));
      }
      catch(e){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to save data: $e"))); 
      }   
    }

    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fillup the requirements"))); 
    }


  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            textfield(hintText: "Email", controller: emailController,), 
            SizedBox(height: size.height*0.02,), 
            textfield(hintText: "Password", controller: passwordController,),
            SizedBox(height: size.height*0.02,), 
            textfield(hintText: "Name", controller: nameController,), 
            SizedBox(height: size.height*0.02,),
            ElevatedButton(
            onPressed: (){
              sendData(); 
            }, 
            child: Text("Submit"), 
            )
          ],
        ),
      ),
    );
  }
}


