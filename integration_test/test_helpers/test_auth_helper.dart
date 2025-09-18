import 'dart:math';

mixin TestAuthHelper {
  // List of test users with different country codes
  static final List<Map<String, String>> testUsers = [
    {
      'email': 'melamin@gmail.com',
      'password': 'password',
      'countryCode': 'EG', // Egypt
    },
    {
      'email': 'msaad@gmail.com',
      'password': 'password',
      'countryCode': 'SA', // Saudi Arabia
    },
    {
      'email': 'abbas@gmail.com',
      'password': 'password',
      'countryCode': 'AE', // UAE
    },
    {
      'email': 'waleed@gmail.com',
      'password': 'password',
      'countryCode': 'JO', // Jordan
    },
    {
      'email': 'nizar@gmail.com',
      'password': 'password',
      'countryCode': 'QA', // Qatar
    },
    {
      'email': 'mohamed@gmail.com',
      'password': 'password',
      'countryCode': 'SA', // Saudi Arabia
    },
  ];

  // Get a random test user
  static Map<String, String> getRandomTestUser() {
    final random = Random();
    return testUsers[random.nextInt(testUsers.length)];
  }

  // Get a test user by country code
  static Map<String, String>? getUserByCountryCode(String countryCode) {
    try {
      return testUsers.firstWhere(
        (user) => user['countryCode'] == countryCode,
      );
    } catch (e) {
      return null;
    }
  }
}
