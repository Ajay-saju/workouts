int calculate() {
  return 5 * 7;
}

// Running sum
// input - [3,1,2,10,1]
// output - [3,4,6,16,17]
runningSum() async {
  List<int> input = [3, 1, 2, 10, 1];
  List output = [];
  int sum = 0;
  for (int i = 0; i < input.length; i++) {
    sum = sum + input[i];
    output.add(sum);
  }
  print(output);
}

richestCustomerWelth() {
  List<List<int>> accounts = [
    [1, 5],
    [7, 3],
    [8, 5]
  ];
  int richestCustomer = 0;
  for (int i = 0; i < accounts.length; i++) {
    int welth = 0;
    for (int j = 0; j < accounts[i].length; j++) {
      welth = welth + accounts[i][j];
      // print(welth);
    }
    if (richestCustomer < welth) {
      richestCustomer = welth;
    }
  }
  print(richestCustomer);
}

List<String> fizzBuzz(int n) {
  List<dynamic> output = [];
  for (int i = 1; i <= n; i++) {
    if (i % 3 == 0) {
      output.add('fiz');
    } else if (i % 5 == 0) {
      output.add('Buzz');
    } else {
      output.add(i);
    }
  }
  print(output);
  return [];
}

int numberOfSteps(int num) {
  int count = 0;
  while (num > 0) {
    if (num % 2 == 0) {
      num = num ~/ 2;
      count++;
    } else {
      num = num - 1;
      count++;
    }
  }
  print(count);
  return count;
}

exampleForEach() {
  List<String> fruits = ['apple', 'banana', 'orange', 'mango'];

  for (String fr in fruits) {
    print(fr);
  }
}

class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class Linkedlist {
  Node? head;
  void insertData(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;

      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
    // print(head!.data);
  }

  void display() {
    Node? current = head;
    if (current == null) {
      print('Liked list is empty');
    } else {
      while (current != null) {
        print(current.data);
        // print(current.next.toString());
        current = current.next;
      }
    }
  }
}

conditionChecking() {
  int a = 5;
  int b = 6;
  print(a < b); // a lessthan b
  print(a > b); // a grater than b
  print(b < a);
  print(b > a);
}

//Expaining Lamda Function in dart
// Its also known as anonymous function or lamda, Which is function that does't have a name.

// This is normal lamda function
// ignore: prefer_function_declarations_over_variables
Function addNumbers = (int a, int b) {
  int sum = a + b;
  print(sum);
};

// calling normal lamda function -> addNumbers(10,56);

// lamda function with return type

Function multiplyLamda = (int number) {
  return number * number;
};

// calling lamda function with return type -> var output = multiplyLamda(10);

// Another way of implementing lamda function

Function lamdaAdd = (int a, int b) => a + b;
Function lamdaSqure = (int number) => number * number;

// Expalin about Higher Order functions
// can accept function as a parameter , can return a function, can do both .

// Accepting function as a parameter

void someOtherFunction(String msg, Function myfunction) {
  print(msg);
 int output= myfunction(20, 65);
 print(output);
  
}

// return a function
Function returnAFunction() {
  squreOfaNumber(int number) => number * number;
  return squreOfaNumber;
}
