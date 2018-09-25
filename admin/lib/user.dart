class User{
  String name;
  String email;
  String password;
  int id;

  User(this.id, this.name, this.email, this.password);

  void setName(String name){
    this.name = name;
  }

  void setEmail(String email){
    this.email = email;
  }
  void setPassword(String password){
    this.password = password;
  }

  void setId(int id){
    this.id = id;
  }

  String getName() => this.name;
  String getEmail() => this.email;
  String getPassword() => this.password;
  int getId() => this.id;
}