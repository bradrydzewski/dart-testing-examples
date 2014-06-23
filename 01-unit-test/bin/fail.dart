import 'package:unittest/unittest.dart';
import 'prime.dart';

void main() {
  var x = 4;
  test('isPrime', () =>
    expect(isPrime(x), isTrue, reason:'${x} is prime')
  );
  
}