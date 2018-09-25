library admin;
import 'package:flutter/material.dart';
import 'package:admin/user.dart';

class UsersListPage extends StatefulWidget{
  final String title;

  UsersListPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new UsersListState();
  }

}

class UsersListState extends State<StatefulWidget>{
  List users = [];
  @override
  Widget build(BuildContext context) {
    getUsers();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Users"),
      ),
      body: new ListView(
        children: listViewItems(),
        padding: const EdgeInsets.all(8.0),
        shrinkWrap: true,
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }

  void getUsers(){
    // TODO: get users from remote server
    User u = new User(1, "nada", "nadamostafa99", "nada98");
    users.add(u);
    User u2 = new User(2, "muhammad", "msalah.29.10", "muhammads97");
    users.add(u2);
  }

  ListTile getUserTile(User user){
    return new ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      title: new Text(user.getName()),
      subtitle: new Text(user.getEmail()),
    );
  }
  List listViewItems(){
    List<Widget> l = [];
    for(int i = 0; i < users.length; i++){
      l.add(getUserTile(users[i]));
    }
    return l;
  }


}
