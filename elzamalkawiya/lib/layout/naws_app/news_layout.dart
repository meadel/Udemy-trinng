import 'package:elzamalkawiya/layout/naws_app/cubit/cubit.dart';
import 'package:elzamalkawiya/layout/naws_app/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLauout extends StatelessWidget {
  const NewsLauout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "News ADOL",
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    NewsCubit.get(context).changeAppMode();
                  },
                  icon: const Icon(
                    Icons.brightness_4_outlined,
                  ),
                ),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.ChangeBottomNavBar(index);
              },
              currentIndex: cubit.currentIndex,
              items: cubit.bottomItems,
            ),
          );
        },
      ),
    );
  }
}
