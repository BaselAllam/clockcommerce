

bool passwordValidator(String password, String confirmPassword) {

  if(password != confirmPassword){
    return false;
  }else{
    return true;
  }
}


Map<String, dynamic> setUserData(String email, String userName, {String? password, String? confirmPassword}) {

  Map<String, dynamic> userData = {
    'email' : email,
    'userName' : userName,
    'password' : password,
    'confirmPassword' : confirmPassword
  };

  if(password == null) {
    userData.remove('password');
    userData.remove('confirmPassword');
  }

  return userData;
}


signUp(String email, String userName, String requiredPassword, String requiredConfirmPassword) {

  bool passValid = passwordValidator(requiredPassword, requiredConfirmPassword);

  if(passValid == true){
    Map<String, dynamic> userData = setUserData(email, userName, password: requiredPassword, confirmPassword: requiredConfirmPassword);
    print(userData);
  }else{
    print('password dont match');
  }
}


updateData(String email, String userName) {

  Map<String, dynamic> userData = setUserData(email, userName);

  print(userData);
}


void main() {


  signUp('basel.com', 'basel', '1234', '1234');

  updateData('basel.com', 'basel allam');
}