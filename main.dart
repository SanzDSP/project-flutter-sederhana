//2F_362258302037_Sandi Sukoco Putro

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Latihan Flutter 23 9 23",
    //delete debug banner
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Center(
          child: Text("Proyek Uji Coba"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/16/491824.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Alpha'),
            subtitle: Text('Chief Executive Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/2/491826.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Beta'),
            subtitle: Text('Chief Operating Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/5/483023.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Gamma'),
            subtitle: Text('Chief Financial and Marketing Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/10/483020.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Delta'),
            subtitle: Text('Chief Fighting Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/15/483024.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Epsilon'),
            subtitle: Text('Chief Artist Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/10/483019.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Zeta'),
            subtitle: Text('Chief Explorating Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/15/483018.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Eta'),
            subtitle: Text('Chief Architecture Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/14/486846.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Rose Oriana'),
            subtitle: Text('Chief Technical Officer'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/4/504305.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Lambda'),
            subtitle: Text('Trainer Instructor'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/2/511594.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Nu'),
            subtitle: Text('Marketing staff supervisor'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/3/501613.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Omega'),
            subtitle: Text('Deputy Chief of Artist Staff'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/3/521546.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Victoria'),
            subtitle: Text('Artist Staff Supervisor'),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.myanimelist.net/images/characters/10/501616.jpg'), // Ganti URL gambar sesuai yang Anda inginkan
            ),
            title: Text('Kai'),
            subtitle: Text('Artist Staff Secretary'),
            onTap: () {},
          ),
        ],
      ),
      drawer: _buildDrawerKiri(),
      endDrawer: _buildDrawerKanan(),
    );
  }
}

//widget pengisi sidebar
Widget _buildDrawerKiri() {
  return SizedBox(
    //menu drawer
    child: Drawer(
      //list agar scrollable
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            //foto profil
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.myanimelist.net/images/characters/7/461218.jpg")),
            //Username
            accountName: Text("Shadow"),
            //Company
            accountEmail: Text("Shadow Garden"),
            //background foto profil
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i0.wp.com/www.crowsworldofanime.com/wp-content/uploads/2023/02/The_Eminence_In_Shadow.jpg?fit=1137%2C638&ssl=1"),
                    fit: BoxFit.cover)),
          ),
          //list menu
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Keanggotaan"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text("Keuangan"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.emoji_emotions),
            title: Text("Profil"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Tentang"),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}

Widget _buildDrawerKanan() {
  return SizedBox(
    //menu drawer
    child: Drawer(
      //masih list agar scrollable
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          //list menu
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Pengaturan"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("Aksesbilitas"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text("Kode QR"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("LogOut"),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
