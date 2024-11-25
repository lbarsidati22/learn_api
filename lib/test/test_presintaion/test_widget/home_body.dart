// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api/test/cubit/cubit/test_home_cubit.dart';
import 'package:learn_api/test/test_presintaion/test_widget/test_cusstom_buttom.dart';

class TestHomeBody extends StatelessWidget {
  const TestHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('learn api'),
      ),
      body: Column(
        children: [
          TestCusstomButtom(
            onTap: () => context.read<TestHomeCubit>().getdata(),
            title: 'Post dat',
          ),
          TestCusstomButtom(
            onTap: () {},
            title: 'one user',
          ),
          TestCusstomButtom(
            onTap: () {},
            title: 'all users',
          ),
        ],
      ),
    );
  }
}
