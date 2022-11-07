import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 11,
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              title: const Text("shibin"),
              //tileColor: Colors.grey,
              subtitle: const Text("9748984856"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.phone, color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("akhil"),
              //tileColor: Colors.grey,
              subtitle: const Text("9874848399"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.phone, color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("manu"),
              //tileColor: Colors.grey,
              subtitle: const Text("9875389838"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.phone, color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("anu"),
              subtitle: const Text("7893734887"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.phone, color: Colors.blue)
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
              //onTap: ,
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("niyas"),
              subtitle: const Text("9988776655"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(width: 30),
                  Icon(Icons.phone, color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("manu"),
              subtitle:  const Text("9988770655"),
              trailing: Wrap(
                children: const [
                  Icon(Icons.sms_sharp, color: Colors.blue),
                  SizedBox(width: 30),
                  Icon(Icons.phone, color: Colors.blue),
                ],
              ),
              leading: const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/1200px-Google_Contacts_icon.svg.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
