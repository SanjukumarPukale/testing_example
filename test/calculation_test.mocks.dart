// Mocks generated by Mockito 5.2.0 from annotations
// in testing_example/test/calculation_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:testing_example/calculation.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [AP].
///
/// See the documentation for Mockito's code generation for more information.
class MockAP extends _i1.Mock implements _i2.AP {
  MockAP() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get a =>
      (super.noSuchMethod(Invocation.getter(#a), returnValue: 0) as int);
  @override
  set a(int? _a) => super
      .noSuchMethod(Invocation.setter(#a, _a), returnValueForMissingStub: null);
  @override
  int get d =>
      (super.noSuchMethod(Invocation.getter(#d), returnValue: 0) as int);
  @override
  set d(int? _d) => super
      .noSuchMethod(Invocation.setter(#d, _d), returnValueForMissingStub: null);
  @override
  int get n =>
      (super.noSuchMethod(Invocation.getter(#n), returnValue: 0) as int);
  @override
  set n(int? _n) => super
      .noSuchMethod(Invocation.setter(#n, _n), returnValueForMissingStub: null);
  @override
  int computeAP() =>
      (super.noSuchMethod(Invocation.method(#computeAP, []), returnValue: 0)
          as int);
}
