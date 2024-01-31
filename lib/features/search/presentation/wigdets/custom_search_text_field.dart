
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.black54,
          filled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search Books',
          suffixIcon: IconButton(
            onPressed: () {

            },
            icon: const Icon(CupertinoIcons.search, ),
          ),
        ),
      ),
    );
  }



  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.white60),
    );
  }
}
