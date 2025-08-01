class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double get balance => _balance;

  withdraw (double amount){
    if (amount < _balance){
      _balance -= amount;
    }
    if (amount > _balance){
    print ('invalable');
    
    }
  }

  getSummery(){
    print('Current balance: $_balance');
  }
}
void main(){
  var b = BankAccount();
  b.deposit(2999);
  b.getSummery();
}
