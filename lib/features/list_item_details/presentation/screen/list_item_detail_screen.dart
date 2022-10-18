import 'package:flutter/material.dart';
import 'package:learnwordsapp/di/setup_di.dart';
import 'package:learnwordsapp/features/common/values.dart';
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
  final _nameController = TextEditingController();
  late final ListItemBloc _bloc;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() => setState(() {}));
    _bloc = getIt.get<ListItemBloc>();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.backgroundColor,
          child: Column(
            children: <Widget>[
              _buildTopNav(context),
              GeneralEditField(
                controller: _nameController,
                labelText: 'Name',
                hintText: 'Enter a new list name',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopNav(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.keyboard_backspace,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              onPressed: () => Navigator.pop(context)),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add new List',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              icon: const Icon(
                Icons.check,
                color: AppColors.primaryColor,
              ),
              iconSize: 24,
              tooltip: 'Save',
              onPressed: () {
                _bloc.add(
                  ListItemEvent.saveItemEvent(title: _nameController.text));

                Navigator.pop(context);
              }),
        ],
      ),
    );
  }


}
