import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whastapp_clone/model/user_list.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.archive_outlined,
                color: Colors.white,
              ),
              Text(
                'Archive',
                style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 13),
              ),
              const SizedBox(
                width: 100,
              ),
              const Text(
                '100',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 500,
          width: 300,
          child: ListView.separated(
            itemBuilder: (context, index) {
              void openchat() {}

              final Dp = userList[index].imagelink;
              final savedname = userList[index].username;
              final message = userList[index].textpeek;
              final time = userList[index].activeDate;
              return GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image.network(Dp),
                    ),
                  ),
                  title: Text(
                    savedname,
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text(
                    message,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: Text(time),
                ),
              );
            },
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(5),
            ),
            itemCount: userList.length,
          ),
        ),
      ],
    );
  }
}
