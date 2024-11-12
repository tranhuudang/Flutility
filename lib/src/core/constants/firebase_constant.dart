class FirebaseConstant{
  static Firestore firestore = Firestore._internal();
}

class Firestore{
  Firestore._internal();
  final String api = 'Api';
  final String geminiApi = 'Gemini';
  final String statistics = 'Statistics';
  final String editor = 'Editor';
  final String feedback = 'Feedbacks';
  final String login = 'Login';
  final String users = 'Users';
  final String roles = 'Roles';
  final String rolesList = 'RolesList';
}