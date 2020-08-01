import 'package:flutter/material.dart';
import 'package:apk_admin/apk_admin.dart';

void main() => runApp(ApkAdminRun());

class ApkAdminRun extends StatefulWidget {
  @override
  ApkAdminState createState() => ApkAdminState();
}

class ApkAdminState extends State<ApkAdminRun> {
  ApkAdmin apkAdmin = ApkAdmin();

  Widget buildOptionButton(String title, Function action) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      onPressed: action,
      child: Text(
        title,
        style: TextStyle(color: Colors.blueGrey, fontSize: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:RefreshIndicator(
          onRefresh: () async {
            return await Future.sync(() {
              setState(() {});
            });
          },
          child: Scaffold(
            drawer: Drawer(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Backups",
                      style: TextStyle(fontSize: 25),
                    ),
                    Expanded(
                      child: FutureBuilder<Map>(
                        future: apkAdmin.getBackups(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List backups = snapshot.data.keys.toList();
                            return ListView.builder(
                              itemCount: backups.length,
                              itemBuilder: (context, i) => FlatButton(
                                onPressed: () async {
                                  String apkPath = snapshot.data[backups[i]];
                                  await apkAdmin.installAppFromBackup(apkPath);
                                },
                                child: Text(
                                  "${backups[i]}",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              centerTitle: true,
              title: Text('APK admin'),
            ),
            body: FutureBuilder<List<App>>(
              future: apkAdmin.getInstalledApps(includeAppIcon: true),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<App> apps = snapshot.data;
                  return ListView.builder(
                    itemCount: apps.length,
                    itemBuilder: (context, i) => Card(
                      elevation: 5,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.memory(
                                  apps[i].decodedIcon,
                                  height: 70,
                                  width: 70,
                                ),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        apps[i].appName,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        apps[i].packageName,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5),
                                FlatButton(
                                  color: Colors.blue,
                                  shape: StadiumBorder(),
                                  child: Text(
                                    "UNINSTALL",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onPressed: () async {
                                    await apkAdmin
                                        .uninstallApp(apps[i].packageName);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "version name: ${apps[i].versionName}",
                                  style: TextStyle(fontSize: 19),
                                ),
                                Text(
                                  "install date: ${apps[i].installDate}",
                                  style: TextStyle(fontSize: 19),
                                ),
                                Text(
                                  "last update date: ${apps[i].lastUpdateDate}",
                                  style: TextStyle(fontSize: 19),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                buildOptionButton("LAUNCH", () async {
                                  await apkAdmin.launchApp(apps[i].packageName);
                                }),
                                buildOptionButton("BACKUP", () async {
                                  await apkAdmin
                                      .makeBackup(apps[i].packageName);
                                  setState(() {});
                                }),
                                buildOptionButton("SHARE", () async {
                                  await apkAdmin.shareAppViaBluetooth(
                                      apps[i].packageName);
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ),
    );
  }
}