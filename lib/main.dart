import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
// End of main function

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// Create a stateless widget
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My first flutter App',
      home: NewStatefull(),
    );
  }
}

// Create a statefull widget
class NewStatefull extends StatefulWidget {
  const NewStatefull({Key? key}) : super(key: key);

  @override
  _NewStatefullState createState() => _NewStatefullState();
}

class _NewStatefullState extends State<NewStatefull> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: const Color(0xFFE57373),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://media.istockphoto.com/photos/mountaineer-spreads-arms-to-celebrate-on-mountain-summit-picture-id1264542668?b=1&k=20&m=1264542668&s=170667a&w=0&h=_XDVlxJStpwCWdFbQgDRMVd69p73nqcbuUVdOYPVKe8="),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          ''' 
          
          
          
          
    You have captured photo $_count time    
          
          
          
          
          ''',
          style: const TextStyle(
            color: Color(0xFFE57373),
            fontSize: 30,
            height: 2,
            wordSpacing: 5,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Call a anonymous function
        onPressed: () => setState(() {
          _count++;
        }),
        // Set a icon to the button
        child: const Icon(Icons.add_a_photo_outlined),
        tooltip: 'Click to take selfie',
        elevation: 0.0,
        backgroundColor: const Color(0xFFE57373),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // Drawer
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFE57373),
              ),
              accountName: Text('Maruf Marzuq'),
              accountEmail: Text('marufmarzuq18@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvMYoHYaGSL-f_CiASP8Ekc9KZ8DELB7jujw&usqp=CAU'),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Account'),
              leading: const Icon(Icons.account_box),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.contact_mail),
              onTap: () {},
            ),
            ListTile(
              title: const Text('logout'),
              leading: const Icon(Icons.logout),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('List item'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
