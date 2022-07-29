  class Bank {
  final _password = 2468;
  double _balance = 500000.0;

  double get balance => _balance;

  bool verifyPassword (int pass) {
    if (_password == pass) {
      return true;
    }
    return false;
  }

  double doDebit(double amount) {
    _balance -= amount;
    return _balance;

  }

  double doCredit(double amount) {
    _balance += amount;
    return _balance;
  }

}

var bank = Bank();

   String checkBalance(bool vp, double balance) {
    if(vp) {
      return balance.toString();
    }
    return 'incorrect password';
      
    } 

    String withdraw(double amount, double balance, bool vp, Bank bank) {
      if(vp) {
        if(balance > 1000 && amount <= balance) {
        
        print('bank balance after withdrawal ${bank.doDebit(amount)}');
        return bank.doDebit(amount).toString();
      } return 'insufficient balance';
      }
      return 'incorrect password';
      
      
  }

  String diposit(double amount, double balance, bool vp, Bank bank) {
    if(vp) {
      
      print('Balance after diposit ${bank.doCredit(amount)}');
      return bank.doCredit(amount).toString();
    }
    return 'incorrect password';
      
    } 


  

