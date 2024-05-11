import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class showdata extends StatefulWidget {
  const showdata({super.key});

  @override
  State<showdata> createState() => _showdataState();
}

class _showdataState extends State<showdata> {
  int? _selectedItemIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        backgroundColor: Colors.blue,
      ),


      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No users found'));
          }
          
            int totalUsers = snapshot.data!.docs.length;

          // Data is ready to be displayed
          return 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("The total number of users: $totalUsers", style: TextStyle(
                fontSize: size.width*0.05, 
                fontWeight: FontWeight.bold
                ),
                ), 
                SizedBox(height: size.height*0.02,), 
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var userData = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                    var userName = userData['name'] ?? 'Unknown';
                    var userEmail = userData['email'] ?? 'Unknown';
                    bool isSelected = _selectedItemIndex == index;
                    
                    return GestureDetector(
                      onTap: (){
                         _selectedItemIndex = isSelected ? null : index;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red, 
                            width: size.width*0.002
                          ), 
                          color: isSelected ? Colors.green : Colors.transparent,
                        ),
                        child: ListTile(
                          title: Text("Name: $userName\nEmail: $userEmail"),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}