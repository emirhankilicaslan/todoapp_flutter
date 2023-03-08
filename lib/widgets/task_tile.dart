import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?)? checkboxCallBack;
  final VoidCallback longPressCallBack;

  TaskTile({
    required this.isChecked,
    required this.title,
    required this.checkboxCallBack,
    required this.longPressCallBack,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
