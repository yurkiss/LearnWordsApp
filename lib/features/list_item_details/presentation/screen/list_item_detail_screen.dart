import 'package:flutter/material.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/features/common/widget/general_edit_field.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/bloc/list_item_bloc.dart';
import 'package:learnwordsapp/features/list_item_details/presentation/model/list_item_event.dart';

class ListsItemDetailScreen extends StatefulWidget {
  const ListsItemDetailScreen({Key? key}) : super(key: key);

  static const String routeKey = '/lists/item';

  @override
  State<StatefulWidget> createState() => ListsItemDetailScreenState();
}

class ListsItemDetailScreenState extends State<ListsItemDetailScreen> {
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Add new List"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          GeneralEditField(
            controller: nameController,
            labelText: 'Name',
            hintText: 'Enter a new list name',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getIt
              .get<ListItemBloc>()
              .add(ListItemEvent.saveItemEvent(title: nameController.text));

          Navigator.pop(context);
        },
        tooltip: 'Save',
        backgroundColor: Colors.purple,
        child: const Icon(Icons.check),
      ),
    );
  }
}
