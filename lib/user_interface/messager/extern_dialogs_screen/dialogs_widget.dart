import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/user_interface/fake_data.dart';
import 'package:test_app/user_interface/messager/extern_dialogs_screen/dialog_list_title.dart';

List<VKFakeData> dataToWidget = [];

void genAndPlaceData() {
  dataToWidget.clear();
  Random random = Random();
  int length = random.nextInt(11) + 10;
  for (var i = 0; i < length; i++) {
    dataToWidget.add(VKFakeData.gen(random));
  }
}

class DialogsWidget extends StatelessWidget {
  const DialogsWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {   
    return ListView(
      children: dataToWidget.map((e) => DialogListTitle(data: e)).toList(),
      );        
  }
}


// ReorderableListView