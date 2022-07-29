import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:testing_example/calculation.dart';

import 'calculation_test.mocks.dart';


  @GenerateMocks([AP])
  void main() {
    
    test('testing of computeSum ', () {
      var ap = MockAP();
      when(ap.computeAP()).thenReturn(62);
      expect(computeSum(ap.computeAP(), 20, 5), 670);
    },);

    
  
}