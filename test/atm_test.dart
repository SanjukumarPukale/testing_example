
import 'dart:html';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testing_example/atm.dart';

import 'atm_test.mocks.dart';


@GenerateMocks([Bank])
void main() {
    
    test('Testing of checkBalance ', () {
      expect(checkBalance(true, 50000), '50000');
    },);

}
