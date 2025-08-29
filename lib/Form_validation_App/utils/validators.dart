class Validators {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // A simple regex for email validation
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }

    return null; // ✅ means valid
  }
  static String? passwordValidator(String? value) {
    if(value==null||value.isEmpty){
      return 'Password is requird';

    }
    if(value.length<8){
      return 'password must be of atleast 8 characters';

    }
    return null; // ✅ means valid
  }
  static String? phoneValidator(String? value) {
    if(value==null||value.isEmpty){
      return 'Phone no is required';

    }if(value.length<10){
      return 'Phone number must be of atleast 10 characters';
    } if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Only digits allowed';
    }
    return null;

    return null; // ✅ means valid
  }
}
