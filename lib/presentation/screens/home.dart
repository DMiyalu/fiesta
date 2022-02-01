import 'package:fiesta/presentation/widgets/appBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 100,
        width: MediaQuery.of(context).size.width * 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(height: 5),
              invitedList()
            ],
          ),
        ),
      ),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget floatingActionButton() {
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          actionButton(icon: Icons.add, bkgColor: Colors.blue, onTap: () {}),
          const SizedBox(width: 10),
          actionButton(icon: Icons.qr_code, bkgColor: Colors.deepPurple, onTap: () {})
        ],
      ),
    );
  }

  Widget actionButton(
      {required Function? onTap, IconData? icon, Color? bkgColor}) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: bkgColor, shape: BoxShape.circle),
        child: InkWell(
          onTap: () => onTap,
          borderRadius: BorderRadius.circular(100),
          child: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }

  Widget invitedList() {
    return Ink(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Ink(
            child: const ListTile(
              title: Text('Cedric-Dédé & Manuella'),
              subtitle: Text('Couple'),
            ),
          ),
          Ink(
            child: const ListTile(
              title: Text('Cedric-Dédé & Manuella'),
              subtitle: Text('Couple'),
            ),
          ),
        ],
      ),
    );
  }
}
