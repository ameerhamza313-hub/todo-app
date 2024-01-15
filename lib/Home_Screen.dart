import 'package:flutter/material.dart';
import 'package:todo/todo.dart';
import 'package:todo/todo_models.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModels> todos =[];


  TextEditingController title = TextEditingController();
  TextEditingController desc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TODO List"),
      ),

    body: SingleChildScrollView(
      child: Column(
        children: [
        SizedBox(
          height: 450,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: todos.length,itemBuilder: (context,index){
                return Todo(title: todos[index].title, desc: todos[index].desc, done: todos[index].check);
          }),
        ),
          
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
      
                      child: TextFormField(
                        controller: title,
                        decoration: const InputDecoration(labelText: "Title"),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: desc,
                        decoration: const InputDecoration(labelText: "Description"),
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
      
                todos.add(TodoModels(title.text, desc.text, false));
                setState(() {
      
                });
      
              }, child: const Text("Add Todo"))
            ],
          ),
      
      
      
      ],
      ),
    ),
    );


  }
}
