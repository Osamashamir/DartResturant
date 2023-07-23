import 'dart:io';

List tasks = [];
void main() {
  print(" Please Login to online Resturant");
  bool islogin = false;

  while (islogin == false) {
    var email = (stdin.readLineSync()!);
    var password = stdin.readLineSync()!;
    if (email == "resturant@gmail.com" && password == "12345") {
      print("Login Successfull");
      islogin == true;
      print("wellcome to Resturant");
      var isContinue = true;
      while (isContinue) {
        print("Press 1 For All Items Order");
        print("Press 2 For View My Order");
        print("Press 3 For Special Order");
        print("Press 4 For cancel order");
        print("Press 5 Or Logout ID");

        var userInput = stdin.readLineSync();
        if (userInput == "1") {
          addTask();
        } else if (userInput == "2") {
          viewTask();
        } else if (userInput == "3") {
          updateTask();
        } else if (userInput == "4") {
          deleteTask();
        } else if (userInput == "5") {
          logoutTask();
        } else {
          print("Invalid Number selection");
        }
      }
    } else {
      print("try again");
    }
  }
}

addTask() {
  print("Enter Your Order");
  var taskTile = stdin.readLineSync();
  print("Enter Your Time Duration");
  var taskDuedate = stdin.readLineSync();

  Map task = {
    "taskTile": taskTile,
    "taskDueDate": taskDuedate,
  };
  tasks.add(task);
  print("Order List ->$task");
}

viewTask() {
  for (var i = 0; i < tasks.length; i++) {
    print("$i. My Order List :${tasks[i]}");
  }
}

updateTask() {
  List<String> Menu = [
    "Biryani",
    "Zinger",
    "Pizza",
    "Drink",
    "Chicken",
    "Fries",
    "Double Zinger",
  ];

  print("Hot Deal Today 70% off:$Menu");

  print("Enter Your Order");
  var item = stdin.readLineSync();
  Map order = {
    "item": item,
  };
  tasks.add(order);
  print("Order List: $order");
}

deleteTask() {
  tasks.clear();
  print("All order cancel");
}

logoutTask() {
  print("logout program");
  exit(0);
}
