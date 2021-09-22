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
      body: Center(
        child: Text(
          'You have captured photo $_count time',
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
        tooltip: 'Increament',
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
                    'https://st2.depositphotos.com/1000393/6507/i/600/depositphotos_65076917-stock-photo-hacker-and-terrorism-fight.jpg'),
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
