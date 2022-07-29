import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:testing_example/cat.dart';
import 'package:mockito/mockito.dart';

import 'cat_test.mocks.dart';


@GenerateMocks([Cat])
void main() {
  // Create mock object.
  
  group('Cat test', () {
    
    test('testing of sound ', () {

      var cat = MockCat();

      when(cat.sound()).thenReturn('purr');
      expect(cat.sound(), 'purr');

      when(cat.sound()).thenReturn("Meow");
      expect(cat.sound(), "Meow");

      verify(cat.sound()).called(2);

      },);

    test('testing of lives getter', () {
      var cat = MockCat();

      when(cat.lives).thenReturn(8);
      expect(cat.lives, 8);

      // You can verify setters.
      cat.lives = 9;
      verify(cat.lives=9);


    },);

    test('testing of eatFood ', () {

      var cat = MockCat();
      

      when(cat.eatFood("fish")).thenReturn(true);

// ... including collections
      

// ... or matchers
      when(cat.eatFood(argThat(startsWith("dry")))).thenReturn(false);
      // when(cat.eatFood(any)).thenReturn(false);  

// ... or mix arguments with matchers
      when(cat.eatFood(argThat(startsWith("dry")), hungry: true)).thenReturn(true);
      expect(cat.eatFood("fish"), isTrue);
      
      expect(cat.eatFood("dry food"), isFalse);
      expect(cat.eatFood("dry food", hungry: true), isTrue);

      verify(cat.eatFood("fish"));
      
      verify(cat.eatFood(argThat(contains("food"))));

      

      
    },);

    test('testing of walk', () {

      var cat = MockCat();

      when(cat.walk(["roof","tree"])).thenReturn(2);
      expect(cat.walk(["roof","tree"]), equals(2));

      verify(cat.walk(["roof","tree"]));
    },);

    test('testing of eatFood method using FakeCat class', () {
      var cat = FakeCat();

      cat.eatFood('Milk');
      // cat.sleep();   // this will give unimplementederror
    },);

    test('chew method testing', () async {
      var cat = MockCat();
      when(cat.eatFood("fish")).thenReturn(true);
      cat.eatFood('fish'); 
      await untilCalled(cat.chew());
    },);

    
  },);
}




// we can use fake cat, from fake class we can use the methods which is necesary other method we can ignore, if we call other method it will throw UnImplementedError

class FakeCat extends Fake implements Cat {
  @override
  bool eatFood(String food, {bool? hungry}) {
    print('FakeCat eat $food');
    return true;
  }
}