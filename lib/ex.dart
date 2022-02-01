import 'dart:math';

import 'package:flutter/material.dart';

// {... ...} {.. ..}{. ... .}{.. .}{.. ...} {... ..} class

class Example extends StatelessWidget {
  const Example({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = getData();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Саня ушел срать",
        style: TextStyle()),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
              trailing: Icon(list[i].data),
              title: Text("${list[i].temp}"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("${list[i].temp}"),
                    ),
                    body: Center(
                      child: Icon(list[i].data, size: 60)),);
                }));
              },),
                       
          );
        }),
    );
  }
}


class WeatherData {
  final int temp;
  final IconData data;

  WeatherData({required this.temp, required this.data});
}

WeatherData getWeatherRand(Random rand) {
  return WeatherData(temp: rand.nextInt(100), data: Icons.accessible_outlined);
}

List<WeatherData> getData() {
  var rand = Random();
  List<WeatherData> list = [];

  for (var i = 0; i < 20; i++) {
    list.add(getWeatherRand(rand));
  }
  return list;
}