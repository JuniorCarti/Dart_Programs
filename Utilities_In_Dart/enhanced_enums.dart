//Enhanced enums (with fields, constructors, methods)
enum UserRole {
  admin("Admin has full access"),
  user("User has limited access"),
  guest("Guest has view-only access");

  final String description;
  const UserRole(this.description);

  void printRole() => print("Role: $name - $description");
}

void main() {
  UserRole.admin.printRole(); // Role: admin - Admin has full access
  UserRole.guest.printRole();
}
