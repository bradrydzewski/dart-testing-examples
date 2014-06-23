import 'package:unittest/unittest.dart';
import 'prime.dart';

void main() {
  
  test('isPrime', () {
    expect(isPrime(2), equals(true));
    expect(isPrime(3), isTrue);
    expect(isPrime(4), isFalse);
  });
  
}

