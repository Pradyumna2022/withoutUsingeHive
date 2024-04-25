import 'package:assignmen/model/emp_model.dart';
import 'package:flutter/material.dart';

class AddEmp extends StatelessWidget {
  AddEmp({
    super.key,
  });
  final empController = TextEditingController();
  final empPController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            actions: [TextButton(onPressed: () {}, child: Text("Save"))],
            title: Text("Add Emp"),
            leading: TextButton(
              child: Text(
                "Back",
              ),
              onPressed: () {
                Navigator.pop(
                    context,
                    Employee(
                        empName: empController.text.toString(),
                        project: empPController.text.toString()));
              },
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: empController,
                  decoration: InputDecoration(
                      hintText: 'Employee Name',
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: empPController,
                  decoration: InputDecoration(
                      hintText: 'Project Name 1',
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
