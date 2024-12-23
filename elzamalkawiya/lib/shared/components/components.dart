import 'package:elzamalkawiya/modules/container/cubit/cubit_na.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  required Function() function,
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClickable = true,
  // Function()? onSubmit,
  // Function()? onChange,
  Function()? suffixPressed,
  Function()? onTap,
  // required Function() validate,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onTap: onTap,
      // validator: validate(),
      // onFieldSubmitted: onSubmit!(),
      // onChanged: onChange!(),
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
            : null,
        border: const OutlineInputBorder(),
      ),
    );

Widget buildTaskItam(Map model, context) => Dismissible(
      key: Key(model['id'].toString()),
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(
          id: model['id'],
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 50.0,
              child: Text(
                '${model['time']}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model['title']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    '${model['date']}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                AppCubit.get(context).updateData(
                  status: 'done',
                  id: model['id'],
                );
              },
              icon: const Icon(
                Icons.check_box,
                color: Colors.greenAccent,
              ),
            ),
            IconButton(
              onPressed: () {
                AppCubit.get(context).updateData(
                  status: 'archive',
                  id: model['id'],
                );
              },
              icon: const Icon(
                Icons.archive,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );

///adel test///==>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// Widget buildStoryItemTest() => Container(
//     width: 100,
//     height: 800,
//     decoration: BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.circular(20.0),
//     ),
//     child: Text('adel'));

Widget buildStoryItemTest() => Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.circular(20)),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(66.0),
                        child: const Image(
                          image: AssetImage(
                            'assets/images/test1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      'assets/images/Zizo.jpg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2.0,
              ),
              const Text('mohamed'),
            ],
          ),
        ],
      ),
    );
