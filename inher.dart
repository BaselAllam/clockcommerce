

class User{

  String name;
  String email;

  User(this.name, this.email);

  String data() {

    return ('Name: ${this.name}, Email ${this.email}');
  }
}



class Employee extends User{

  double? salary;
  String? position;

  Employee(name, email, this.salary, this.position) : super(name, email);


  String get employeeData => data();
}



class Manager extends Employee{

  String rules;

  Manager(email, name, salary, position, this.rules) : super(name, email, salary, position);
}


void main() {

  Employee emp = Employee('Bassel', 'basel.com', 200.5, 'Software');

  Manager manager = Manager('Bassel', 'basel.com', 200.5, 'Software', 'rule');

  print(emp.employeeData);

  print(manager.data());
}