class AuthService {
  // Fake Register function
  Future<bool> register(String email, String password, String phone) async {
    // For now, just simulate a delay (like API call)
    await Future.delayed(Duration(seconds: 1));

    // Simple fake rule: if email contains '@' it succeeds
    if (email.contains('@') && password.isNotEmpty && phone.isNotEmpty) {
      return true; // success
    } else {
      return false; // failed
    }
  }

  // Fake Login function
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));

    // Simple fake rule
    if (email == "test@example.com" && password == "1234") {
      return true;
    } else {
      return false;
    }
  }
}
