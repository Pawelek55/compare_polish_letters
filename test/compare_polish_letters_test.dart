import 'package:flutter_test/flutter_test.dart';

import 'package:compare_polish_letters/compare_polish_letters.dart';

void main() {
  test('Words should be sorted, when compare method have been invoked', () {
    final ComparePolishLetters cpl = ComparePolishLetters();
    final _words = ['zxdsa', "sda", "adsa", "Ślimak", "śąsiad", "Śamek"];
    final _wordsSorted = ["adsa", "sda", "Śamek", "śąsiad", "Ślimak", "zxdsa"];

    _words.sort(
      (a, b) => cpl.compare(
        a.toLowerCase(),
        b.toLowerCase(),
      ),
    );

    expect(_words, _wordsSorted);
  });
}
