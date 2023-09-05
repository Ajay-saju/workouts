int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

recursion(int n) {
  if (n == 0) {
    return;
  } else {
    print(n);
    recursion(n - 1);
    print(n);
  }
}

// How do you determine if a string is a palindrome

bool palindrom(String name) {
  String temp = '';
  for (int i = name.length - 1; i >= 0; i--) {
    temp += name[i];
  }
  if (name == temp) {
    return true;
  } else {
    return false;
  }
}

//Find the number of occurrences of a character in a String?

void charOccur(String inputString, String targetString) {
  int count = 0;
  for (int i = 0; i < inputString.length; i++) {
    if (targetString == inputString[i]) {
      count++;
    }
  }
  print('target String appearse in $count times');
}

//How to find out if the given two strings are anagrams or not?

bool isAnagrams(String inputString1, String inputString2) {
  inputString1 = inputString1.replaceAll(' ', '');
  inputString2 = inputString2.replaceAll(' ', '');
  if (inputString1.length != inputString2.length) {
    return false;
  }
  // Create character frequency maps for both strings
  final charCount1 = <String, int>{};
  // final Map<String, int> charCount2 = {};

  for (int i = 0; i < inputString1.length; i++) {
    final char = inputString1[i];
    charCount1[char] = (charCount1[char] ?? 0) + 1;
  }
  // Compare character counts in str2
  for (int i = 0; i < inputString2.length; i++) {
    final char = inputString2[i];
    if (charCount1[char] == null || charCount1[char] == 0) {
      return false;
    }
  }
  return true;
}
//How do you calculate the number of vowels and consonants in a String?

Map<String, int> findVowelsAndConsonats(String inputString) {
  int vowelsCount = 0;
  int consonantsCount = 0;
  inputString = inputString.toLowerCase();
  for (int i = 0; i < inputString.length; i++) {
    final char = inputString[i];
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowelsCount++;
    } else if (char != ' ' && char != '.' && char != ',' && char != '!') {
      consonantsCount++;
    }
  }
  return {'vowels': vowelsCount, 'consonants': consonantsCount};
}
//  Print a Fibonacci series using recursion?

int fibonacci(int n) {
  if (n <= 1)
   {
    return n;
  } 
  else
   {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

// reverse a list

List<int> reverseAList(List<int> items) {
  int temp = 0;
  print(items.length);
  for (int i = 0; i < items.length / 2; i++) {
    temp = items[i];
    items[i] = items[items.length - i - 1];
    items[items.length - i - 1] = temp;
  }
  return items;
}
