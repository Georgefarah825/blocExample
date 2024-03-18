import 'package:blocex/bloc/bloc_import.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BlocExample'),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(children: [
                        BlocConsumer<CounterBloc, CounterState>(
                            listener: (context, state) {
                              if (state is incressmentstate) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('value incress by 1'),
                                  duration: Duration(milliseconds: 300),
                                ));
                              } else if (state is descresmentState) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('value deccress by 1'),
                                  duration: Duration(milliseconds: 300),
                                ));
                              }
                            },
                            builder: (context, state) =>
                                Text('Counter Value :${state.counterValue}')),
                      ]),
                    ],
                  )
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(decressment());
                    },
                    child: Text('Desccress -')),
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(incressment());
                    },
                    child: Text('Inccress +')),
              ],
            )
          ],
        )));
  }
}
