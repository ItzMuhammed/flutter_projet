import 'package:flutter/material.dart';

class LoggedPage extends StatelessWidget {
  final Map<String, dynamic> userData;

  const LoggedPage({required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'User Profile',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 180, color: Colors.white,),
            SizedBox(height: 50,),

            // Image.asset('lib/images/login.png' , height: 180, width:300),
            
            UserInfoTile(label: 'Nom', value: userData['nom_utilisateur']),
            UserInfoTile(label: 'Prénom', value: userData['prenom_utilisateur']),
            UserInfoTile(label: 'Email', value: userData['email']),
            UserInfoTile(label: 'Rôle', value: userData['Role']),
          ],
        ),
      ),
    );
  }
}

class UserInfoTile extends StatelessWidget {
  final String label;
  final String value;

  const UserInfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 15,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
