// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api/test/cubit/cubit/test_home_cubit.dart';
import 'package:learn_api/test/test_presintaion/test_widget/home_body.dart';

class TestHome extends StatelessWidget {
  const TestHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestHomeCubit>(
      create: (context) => TestHomeCubit(),
      child: TestHomeBody(),
    );
  }
}
