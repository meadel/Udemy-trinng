import 'package:elzamalkawiya/modules/container/cubit/cubit_na.dart';
import 'package:elzamalkawiya/modules/container/cubit/states_na.dart';
import 'package:elzamalkawiya/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, State) {},
      builder: (context, State) {
        var tasks = AppCubit.get(context).donetasks;
        return ListView.separated(
          itemBuilder: (context, index) => buildTaskItam(tasks[index], context),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: tasks.length,
        );
      },
    );
  }
}
