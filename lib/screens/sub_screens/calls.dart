import 'package:flutter/material.dart';
import 'package:whastapp_clone/model/user_list.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 70,
          width: 300,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 25,
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Share a link for your whatsapp call',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Recents',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 500,
          width: 300,
          child: ListView.separated(
              itemBuilder: (context, index) {
                final name = statuslist[index].name;
                final time = statuslist[index].time;

                return ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 25,
                  ),
                  title: Text(
                    name,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    time,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                );
              },
              separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(10),
                  ),
              itemCount: statuslist.length),
        ),
      ],
    );
  }
}
