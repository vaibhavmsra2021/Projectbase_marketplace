import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl = 'http://localhost:7000'; // Replace with your backend URL

  Future<void> signUp(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/signup'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        print('Sign up successful');
      } else {
        print('Sign up failed: ${response.statusCode}');
        // Handle error, e.g., show error message to the user
      }
    } catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }
  }

  Future<void> getUserInfo(String firstName,String lastName, String mobileNo) async {
    try{
      final response= await http.post(
        Uri.parse('$baseUrl/info'),
        body:{
          'firstName':firstName,
          'lastName':lastName,
          'mobileNo':mobileNo
        },
      );
      if(response.statusCode==200) print('Sign up successful from this page');
      else{
        print('Sign up failed: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }

  }


  Future<void> getUserInfo1(String professionalIntro, String organizationName, String organizationTitle, String noOfEmployees) async {
    try{
      final response= await http.post(
        Uri.parse('$baseUrl/info1'),
        body:{
          'professionalIntro':professionalIntro,
          'organizationName':organizationName,
          'organizationTitle':organizationTitle,
          'noOfEmployees':noOfEmployees
        },
      );
      if(response.statusCode==200) print('Sign up successful from this page');
      else{
        print('Sign up failed: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }

  }


  Future<void> getUserInfo2(String streetAddress, String houseNo, String zipCode, String city, String state, String country) async {
    try{
      final response= await http.post(
        Uri.parse('$baseUrl/info2'),
        body:{
           'streetAddress':streetAddress,
          'houseNo':houseNo,
          'zipCode':zipCode,
          'city':city,
          'state':state,
          'country':country
        },
      );
      if(response.statusCode==200) print('Sign up successful from this page');
      else{
        print('Sign up failed: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }

  }


  Future<void> getUserInfo3(String universityName, String degree, String skill1, String skill2, String skill3, String skill4, String skill5) async {
    try{
      final response= await http.post(
        Uri.parse('$baseUrl/info3'),
        body:{
           'universityName':universityName,
          'degree':degree,
          'skill1':skill1,
          'skill2':skill2,
          'skill3':skill3,
          'skill4':skill4,
          'skill5':skill5
        },
      );
      if(response.statusCode==200) print('Sign up successful from this page');
      else{
        print('Sign up failed: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }

  }



  Future<void> getUserInfo4(String linkedurl,String twitterurl, String githuburl) async {
    try{
      final response= await http.post(
        Uri.parse('$baseUrl/info4'),
        body:{
          'linkedurl':linkedurl,
          'twitterurl':twitterurl,
          'githuburl':githuburl,
        },
      );
      if(response.statusCode==200) print('Sign up successful from this page');
      else{
        print('Sign up failed: ${response.statusCode}');
      }
    }
    catch (error) {
      print('Error during sign up: $error');
      // Handle error, e.g., show error message to the user
    }

  }

  Future<void> signIn(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/signin'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        // Extract user data from the response
        final user = data['User'];

        print('Sign in successful');
        print('User data: $user');
        // Handle successful sign-in, e.g., save user data to state
      } else {
        print('Sign in failed: ${response.statusCode}');
        // Handle error, e.g., show error message to the user
      }
    } catch (error) {
      print('Error during sign in: $error');
      // Handle error, e.g., show error message to the user
    }
  }
}
