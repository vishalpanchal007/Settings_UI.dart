import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/setting_ui_ios.dart';

void main() {
  runApp(ios());
}

class setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return settingstate();
  }
}

class settingstate extends State<setting> {
  bool lockappSwitch = true;
  bool fingerprintSwitch = false;
  bool changePassSwitch = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.redAccent,
        secondary: Colors.redAccent,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Settings UI"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize:MainAxisSize.max ,

                  children: [
                    Text(
                      "   Common",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight:  FontWeight.bold
                      ),
                    )
                  ],
                ),
                const ListTile(
                  leading: Icon(Icons.language),
                  title: Text("Language"),
                  subtitle: Text("English"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text("Enviroments"),
                  subtitle: Text("production"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "   Account",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent
                      ),
                    )
                  ],
                ),
                const ListTile(
                  title: Text("Phone Number"),
                  leading: Icon(Icons.phone),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                ),
                const Divider(),
                const ListTile(
                  title: Text("Sign Out"),
                  leading: Icon(Icons.exit_to_app),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "    Security",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                ListTile(
                  leading: const Icon(Icons.phone_locked_outlined),
                  title: const Text("Lock app in background"),
                  trailing: Switch(
                    value: lockappSwitch,
                    activeColor: Colors.redAccent,
                    onChanged: (value) {
                      setState(() {
                        lockappSwitch = value;
                      });
                    },
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: Icon(Icons.fingerprint),
                  title: const Text("Use fingerprint"),
                  trailing: Switch(
                    activeColor: Colors.redAccent,
                    activeThumbImage: NetworkImage(
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.peakpx.com%2Fen%2Fhd-wallpaper-desktop-njfxb&psig=AOvVaw0O7KFUrOLs2sckhUrpirlH&ust=1681998023676000&source=images&cd=vfe&ved=0CBMQjhxqFwoTCOD1kKiJtv4CFQAAAAAdAAAAABAI"),
                    value: fingerprintSwitch,
                    onChanged: (value) {
                      setState(() {
                        fingerprintSwitch = value;
                      });
                    },
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: Text("Change Password"),
                  trailing: Switch(
                    value: changePassSwitch,
                    onChanged: (value) {
                      setState(() {
                        changePassSwitch = value;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "    Misc",
                      style: TextStyle( fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                    )
                  ],
                ),
                const ListTile(
                  leading: Icon(Icons.file_open_outlined),
                  title: Text("Terms of Service"),
                ),
                const Divider(),
                const ListTile(
                  title: Text("Open Source and Licences"),
                   leading: Icon(Icons.file_copy_outlined),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
