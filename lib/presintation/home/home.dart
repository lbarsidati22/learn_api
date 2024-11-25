import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_api/busnuce/bloc_home/cubit/home_cubit.dart';
import 'package:learn_api/data/api/user_api.dart';
import 'package:learn_api/data/ripostery/user_repostiry.dart';
import 'package:learn_api/presintation/widget/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(
        userRepostiry: UserRepostiry(
          userApi: UserApi(),
        ),
      ),
      child: const HomeBody(),
    );
  }
}
