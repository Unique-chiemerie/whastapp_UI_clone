import 'package:flutter/material.dart';
import 'package:whastapp_clone/model/user_list.dart';

class Statusscreen extends StatelessWidget {
  const Statusscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 25,
            ),
            title: const Text(
              'My status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            subtitle: const Text(
              'Today, 2:08pm',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            'Recent updates',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 500,
          width: 300,
          child: ListView.separated(
              itemBuilder: (context, index) {
                final title = statuslist[index].name;
                final subtitle = statuslist[index].time;
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(5),
                  ),
              itemCount: statuslist.length),
        )
      ],
    );
  }
}
