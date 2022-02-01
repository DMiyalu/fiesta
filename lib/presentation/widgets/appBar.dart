import 'package:flutter/material.dart';

PreferredSize appBar(context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: AppBar(
      title: const Text(
        'Liste des invités',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.left,
      ),
    )
  );
}

Widget searchFormField(context) {
  return Ink(
    decoration: BoxDecoration(
      color: Colors.grey.withOpacity(.2),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      onChanged: (String value) {},
    )
  );
}