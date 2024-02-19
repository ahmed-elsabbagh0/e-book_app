
import 'package:bookly/features/search/presentation/search_cubit/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
   CustomSearchTextField({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: TextField(
        onTap: () {},
        onChanged: (value) {
          if(value ==""){
          }
          else {
            BlocProvider.of<SearchCubit>(context).getBySearch(search: value);
          }
        },

        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.black54,
          filled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search Books',
          suffixIcon: IconButton(
            onPressed: () {

            },
            icon: const Icon(CupertinoIcons.search,),
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
