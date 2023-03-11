class ModelProfil{
  final String uid;
  final String name;
  final String lastname;
  final String avatar;
  final DateTime createdAt;
  final CompteUser compteUser;

  ModelProfil(this.uid, this.name, this.lastname, this.avatar, this.createdAt, this.compteUser);
}

class CompteUser{
  final String id;
  final String email;
  final String password;
  final String session;

  CompteUser(this.id, this.email, this.password, this.session);
  
}