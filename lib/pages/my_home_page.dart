import 'package:assignmen/model/emp_model.dart';
import 'package:assignmen/pages/add_emp.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Employee> employee = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Employee List"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AddEmp()))
                          .then((value) {
                        if (value != null) {
                          setState(() {
                            employee.add(value);
                          });
                        }
                      });
                    },
                    icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.black,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
              ],
            ),
            body: ListView.builder(
                itemCount: employee.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(255, 255, 194, 194)),
                    child: ListTile(
                      title: Text("Employee Name: " + employee[index].empName),
                      subtitle: Text(
                          "Employee Project No : " + employee[index].project),
                    ),
                  );
                })));
  }
}
