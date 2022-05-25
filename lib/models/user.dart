enum UserStatus { online, idle, doNotDisturb, offline }

class User {
  final String firstName, lastName, imageUrl;
  final UserStatus userStatus;

  User(
    this.firstName,
    this.lastName,
    this.imageUrl,
    this.userStatus,
  );
}

List<User> exampleUsers = [
  User('Eadie', 'Orozco', 'assets/alex.jpg', UserStatus.online),
  User('Abbie', 'Ferry', 'assets/bianka.jpg', UserStatus.doNotDisturb),
  User('Hasan', 'Wise', 'assets/ben.jpg', UserStatus.offline),
  User('Regina', 'Parsons', 'assets/liliana.jpg', UserStatus.offline),
  User('Jago', 'Mcdaniel', 'assets/leon.jpg', UserStatus.offline),
  User('Roger', 'Marks', 'assets/miguel.jpg', UserStatus.idle),
  User('Precious', 'Tyson', 'assets/haroon.jpg', UserStatus.online),
  User('Khalid', 'Peralta', 'assets/norah.jpg', UserStatus.online),
  User('Farzana', 'Wall', 'assets/priya.jpg', UserStatus.online),
];
List<User> sortedUsers = [
  User('Eadie', 'Orozco', 'assets/alex.jpg', UserStatus.online),
  User('Precious', 'Tyson', 'assets/haroon.jpg', UserStatus.online),
  User('Khalid', 'Peralta', 'assets/norah.jpg', UserStatus.online),
  User('Farzana', 'Wall', 'assets/priya.jpg', UserStatus.online),
  User('Roger', 'Marks', 'assets/miguel.jpg', UserStatus.idle),
  User('Abbie', 'Ferry', 'assets/bianka.jpg', UserStatus.doNotDisturb),
  User('Regina', 'Parsons', 'assets/liliana.jpg', UserStatus.offline),
  User('Jago', 'Mcdaniel', 'assets/leon.jpg', UserStatus.offline),
  User('Hasan', 'Wise', 'assets/ben.jpg', UserStatus.offline),
];
