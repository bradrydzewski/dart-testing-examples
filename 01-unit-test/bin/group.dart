import 'package:unittest/unittest.dart';
import 'prime.dart';

void main() {

  group('isPrime test group', () {
    test('Test 2', () => expect(isPrime(2), isTrue));
    test('Test 3', () => expect(isPrime(3), isTrue));
    test('Test 5', () => expect(isPrime(5), isTrue));
    test('Test 7', () => expect(isPrime(7), isTrue));
    test('Test 8', () => expect(isPrime(8), isFalse));
    test('Test 9', () => expect(isPrime(9), isFalse, reason:'9 is divisible by 3'));
  });  

}

