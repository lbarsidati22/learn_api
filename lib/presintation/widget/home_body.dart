import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api/busnuce/bloc_home/cubit/home_cubit.dart';
import 'package:learn_api/presintation/combonats/app_button.dart';
import 'package:learn_api/presintation/home/home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppButton(
              onTap: () {},
              title: 'Post data',
            ),
            AppButton(
              onTap: () => context.read<HomeCubit>().getOneUser(),
              title: 'one user',
            ),
            AppButton(
              onTap: () {},
              title: 'list user',
            ),
          ],
        ),
      ),
    );
  }
}
