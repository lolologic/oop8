import 'package:oop8/coin_stack.dart';

void main() {
  final stackA = CoinStack(coinStack: [1, 2, 5]); // Summe: 8
  final stackB = CoinStack(coinStack: [1, 1]); // Summe: 2
  final stackC = CoinStack(coinStack: [4, 4]); // Summe: 8

  print('--- Vergleichsoperatoren ---');
  print('stackA > stackB: ${stackA > stackB}');
  print('stackA < stackB: ${stackA < stackB}');
  print('stackA >= stackC: ${stackA >= stackC}');
  print('stackA <= stackC: ${stackA <= stackC}');
  print('stackA == stackC: ${stackA == stackC}');

  print('\n--- Addition ---');
  final addedStack = stackA + stackB;
  print('${stackA.coinStack} + ${stackB.coinStack}');
  print('Ergebnis: ${addedStack.coinStack}');

  print('\n--- Subtraktion erfolgreich ---');
  final stackD = CoinStack(coinStack: [1, 1, 2, 5]);
  final stackE = CoinStack(coinStack: [1, 2]);

  final successfulSubtraction = stackD - stackE;

  print('${stackD.coinStack} - ${stackE.coinStack}');
  print('Ergebnis: ${successfulSubtraction?.coinStack}');

  print('\n--- Subtraktion nicht möglich ---');
  final stackF = CoinStack(coinStack: [1, 2, 5]);
  final stackG = CoinStack(coinStack: [1, 1]);

  final failedSubtraction = stackF - stackG;

  print('${stackF.coinStack} - ${stackG.coinStack}');
  print('Ergebnis: ${failedSubtraction?.coinStack}');
}
