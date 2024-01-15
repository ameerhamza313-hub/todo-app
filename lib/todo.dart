import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  final String title;
  final String desc;
  final bool done;

  const Todo({super.key, required this.title, required this.desc, required this.done});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  Color color = Colors.lightBlue;
   @override
  void initState() {
     color = widget.done == true? Colors.green: Colors.lightBlue;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Text(widget.desc,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),),
            ],
          ),
        ),
      ),
    );
  }
}
