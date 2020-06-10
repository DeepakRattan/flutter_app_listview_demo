import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: TaskListView(),
      ),
    );
  }
}

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskListTile(
          title: 'Title1',
        ),
        TaskListTile(
          title: 'Title2',
        ),
        TaskListTile(
          title: 'Title2',
        ),
      ],
    );
  }
}

class TaskListTile extends StatefulWidget {
  final String title;
  TaskListTile({this.title});
  @override
  _TaskListTileState createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}
