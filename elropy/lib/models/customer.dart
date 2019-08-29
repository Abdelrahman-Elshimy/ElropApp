class Customer {
  String _name, _number, _address;
  int _dept;
  
  Customer(this._name, this._number, this._address, this._dept);

  String get name => _name;
  String get number => _number;
  String get address => _address;
  int get dept => _dept;

}