import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ios extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return iosstate();
  }
}

class iosstate extends State<ios> {
  @override
  Widget build(BuildContext context) {
    bool lockappSwitch = true;  
    bool fingerprintSwitch = false;
    bool changePassSwitch = true;
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.destructiveRed,
            middle: Text('Settings UI'),
          ),
          child: Container(
              height: double.infinity,
              width: double.infinity,
              color: CupertinoColors.extraLightBackgroundGray,
              child: Column(children: [
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 12),
                    Text(
                      "Common",
                      style: TextStyle(),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  color: CupertinoColors.white,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12),
                            const Icon(Icons.language, color: Colors.grey),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text("Language"),
                            const Spacer(),
                            Text(
                              "English",
                              style: TextStyle(),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: CupertinoColors.inactiveGray,
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        width: double.infinity,
                        height: 38,
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            const SizedBox(width: 12),
                            const Icon(Icons.cloud, color: Colors.grey),
                            const SizedBox(width: 12),
                            const Text("Environment"),
                            const Spacer(),
                            Text(
                              "Prodution",
                              style: TextStyle(),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              CupertinoIcons.right_chevron,
                              color: CupertinoColors.inactiveGray,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  color: CupertinoColors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.phone,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Phone Number"),
                            Spacer(),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: CupertinoColors.inactiveGray,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.center,
                        height: 38,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.mail,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Email"),
                            Spacer(),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: CupertinoColors.inactiveGray,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SizedBox(width: 12),
                            Icon(
                              Icons.exit_to_app,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 12),
                            Text("Sign Out"),
                            Spacer(),
                            Icon(
                              CupertinoIcons.right_chevron,
                              color: CupertinoColors.inactiveGray,
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 12),
                    Text(
                      "Security",
                      style: TextStyle(),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  color: CupertinoColors.white,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12),
                            const Icon(
                              Icons.phonelink_lock_outlined,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 12),
                            const Text("Lock app in Background"),
                            const Spacer(),
                            CupertinoSwitch(
                                value: lockappSwitch,
                                activeColor: CupertinoColors.destructiveRed,
                                onChanged: (val) {
                                  setState(() {
                                    lockappSwitch = val;
                                  });
                                }),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12),
                            const Icon(
                              Icons.fingerprint,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 12),
                            const Text("Use Fingerprint"),
                            const Spacer(),
                            CupertinoSwitch(
                              value: fingerprintSwitch,
                              onChanged: (val) {
                                setState(() {
                                  fingerprintSwitch = val;
                                });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 38,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12),
                            const Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 12),
                            const Text("Change Password"),
                            const Spacer(),
                            CupertinoSwitch(
                              value: changePassSwitch,
                              activeColor: CupertinoColors.destructiveRed,
                              onChanged: (val) {
                                setState(() {
                                  changePassSwitch = val;
                                });
                              },
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12),
                          Text(
                            "Misc",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.file_open_sharp,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Terms of Service"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.inactiveGray,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.file_copy_sharp,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 12),
                                  Text("Open Source Licenses"),
                                  Spacer(),
                                  Icon(
                                    CupertinoIcons.right_chevron,
                                    color: CupertinoColors.inactiveGray,
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],),),),
    );
  }
}
