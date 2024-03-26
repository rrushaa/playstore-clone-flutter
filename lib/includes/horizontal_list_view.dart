import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HorizontalListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 1.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Card(
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Welcome to Google Play",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 3.0),
                child: Text(
                  "Browse our most popular apps",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 12.0,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/1.png',
                        appName: 'Bumble',
                        appSize: '23 MB',
                        packageName: 'com.google.android.apps.classroom',
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/2.png',
                        appName: 'Clash Royale',
                        appSize: '23 MB',
                        packageName: 'com.supercell.clashroyale',
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/3.png',
                        appName: 'Whatsapp',
                        appSize: '23 MB',
                        packageName: 'com.whatsapp',
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/4.png',
                        appName: 'Facebook',
                        appSize: '23 MB',
                        packageName: 'com.facebook.katana',
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/5.png',
                        appName: 'Reddit',
                        appSize: '23 MB',
                        packageName: 'com.reddit.frontpage',
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    // Add more AppListItems for other apps
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchPlayStore(String packageName) async {
    final url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class AppEntry {
  final String imagePath;
  final String appName;
  final String appSize;
  final String packageName;

  AppEntry({
    required this.imagePath,
    required this.appName,
    required this.appSize,
    required this.packageName,
  });
}

class AppListItem extends StatelessWidget {
  final AppEntry app;
  final void Function(String) launchPlayStore;

  const AppListItem({
    Key? key,
    required this.app,
    required this.launchPlayStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 8, right: 4),
      child: InkWell(
        onTap: () {
          launchPlayStore(app.packageName);
        },
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage(app.imagePath),
                width: 80.0,
                height: 80.0,
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
              ),
              Text(
                app.appName,
                style: TextStyle(
                  color: Color(0xff202124),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(2.0),
              ),
              Text(
                app.appSize,
                style: TextStyle(
                  color: Color(0xff5f6368),
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class HorizontalListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 1.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Card(
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Welcome to Google Play",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 3.0),
                child: Text(
                  "Browse our most popular apps",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 12.0,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/6.png',
                        appName: 'PUBG',
                        appSize: '23 MB',
                        packageName: 'com.tencent.ig', // Updated package name for PUBG Mobile
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/7.png',
                        appName: 'Free Fire',
                        appSize: '23 MB',
                        packageName: 'com.dts.freefireth', // Updated package name for Garena Free Fire
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/8.png',
                        appName: 'Pig Pig',
                        appSize: '23 MB',
                        packageName: '[Google Search Pig Pig package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/9.png',
                        appName: 'Mobile Royale',
                        appSize: '23 MB',
                        packageName: '[Google Search Mobile Royale package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/10.png',
                        appName: 'Teen Patti',
                        appSize: '23 MB',
                        packageName: '[Google Search Teen Patti package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    // Add more AppListItems for other apps
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchPlayStore(String packageName) async {
    final url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class HorizontalListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 1.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Card(
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Welcome to Google Play",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 3.0),
                child: Text(
                  "Browse our most popular apps",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 12.0,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/11.png',
                        appName: 'Google Pay',
                        appSize: '23 MB',
                        packageName: 'com.google.android.gms', // Updated package name for Google Pay
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/12.png',
                        appName: 'Pay Pal',
                        appSize: '23 MB',
                        packageName: 'com.paypal.android.paypal', // Updated package name for PayPal
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/13.png',
                        appName: 'Skrill',
                        appSize: '23 MB',
                        packageName: 'net.skrill.mobile.payments', // Updated package name for Skrill - Netherlands BV
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/14.png',
                        appName: 'Yyy',
                        appSize: '23 MB',
                        packageName: '[Google Search Yyy package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/15.png',
                        appName: '7 Star',
                        appSize: '23 MB',
                        packageName: '[Google Search 7 Star package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    // Add more AppListItems for other apps
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchPlayStore(String packageName) async {
    final url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
class HorizontalListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffeeeeee),
            blurRadius: 1.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Card(
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  "Welcome to Google Play",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 3.0),
                child: Text(
                  "Browse our most popular apps",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 12.0,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/16.png',
                        appName: 'Ludo',
                        appSize: '23 MB',
                        packageName: '[Google Search Ludo package name]', // Search Play Store or reliable website (Many Ludo games exist)
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/17.png',
                        appName: 'Free Fall',
                        appSize: '23 MB',
                        packageName: '[Google Search Free Fall package name]', // Search Play Store or reliable website
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/18.png',
                        appName: 'Candy Crush',
                        appSize: '23 MB',
                        packageName: 'com.king.candycrushsaga', // Updated package name for Candy Crush Saga
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/19.png',
                        appName: 'Angry Birds',
                        appSize: '23 MB',
                        packageName: 'com.rovio.angrybirds', // Updated package name for Angry Birds Classic
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    AppListItem(
                      app: AppEntry(
                        imagePath: 'assets/images/apps/20.png',
                        appName: 'Minions',
                        appSize: '23 MB',
                        packageName: '[Google Search Minions package name]', // Search Play Store or reliable website (Many Minions games exist)
                      ),
                      launchPlayStore: launchPlayStore,
                    ),
                    // Add more AppListItems for other apps
                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

  void launchPlayStore(String packageName) async {
    final url = 'https://play.google.com/store/apps/details?id=$packageName';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
