import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testing_example/atm.dart';

import 'atm_test.mocks.dart';

@GenerateMocks([Bank])
void main() {

  group('Testing of atm', () {



    group('Testing of checkbalance', () {

      test('when verifyPassword is correct ', () {
      expect(checkBalance(true, 50000), '50000.0');
    },);

    test('when verifyPassword is incorrect ', () {
      expect(checkBalance(false, 50000), 'incorrect password');
    },);
      
    },);


    

    group('Testing of withdraw', () {

      test('when verify password is failed', () {
        var bank = MockBank();
      expect(withdraw(2000, 50000, false, bank), 'incorrect password');

    },);

    test('when insufficient balance', () {
      var bank = MockBank();
      expect(withdraw(2000, 500, true, bank), 'insufficient balance');
    },);

    test('when return balance', () {
      var bank = MockBank();
      when(bank.doDebit(3000)).thenReturn(12000.0);
      expect(withdraw(3000, 15000, true, bank), '12000.0');
    },);
      
    },);





    group('Testing of deposit', () {

      test('when verify password is failed', () {
        var bank = MockBank();
      expect(diposit(2000, 50000, false, bank), 'incorrect password');

    },);

    
    test('when return balance', () {
      var bank = MockBank();
      when(bank.doCredit(3000)).thenReturn(18000.0);
      expect(diposit(3000, 15000, true, bank), '18000.0');
    },);
      
    },);

    
    
  },);
  

}
