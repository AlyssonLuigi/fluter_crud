import 'package:flutter/material.dart';
import '/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            color: Colors.orange,
            onPressed: () {
              // editar
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {
              // deletar
            },
          ),
        ],
      ),),
    );
  }
}
