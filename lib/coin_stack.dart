/// Represents a stack of coins.
class CoinStack {
  /// The coins contained in this stack.
  final List<int> coinStack;

  /// Creates a coin stack containing the provided coins.
  CoinStack({required this.coinStack});

  /// Returns the total value of all coins in the stack.
  int get sumCoinStack {
    int sum = 0;
    for (int i = 0; i < coinStack.length; i++) {
      sum += coinStack[i];
    }
    return sum;
  }

  /// Returns whether this stack has a lower total value than [other].
  bool operator <(CoinStack other) {
    return sumCoinStack < other.sumCoinStack;
  }

  /// Returns whether this stack has a greater total value than [other].
  bool operator >(CoinStack other) {
    return sumCoinStack > other.sumCoinStack;
  }

  /// Returns whether this stack has a lower or equal total value than [other].
  bool operator <=(CoinStack other) {
    return sumCoinStack <= other.sumCoinStack;
  }

  /// Returns whether this stack has a greater or equal total value than [other].
  bool operator >=(CoinStack other) {
    return sumCoinStack >= other.sumCoinStack;
  }

  /// Returns whether this stack has the same total value as [other].
  @override
  bool operator ==(Object other) {
    return other is CoinStack && sumCoinStack == other.sumCoinStack;
  }

  @override
  int get hashCode => sumCoinStack.hashCode;

  /// Returns a new stack containing the coins of both stacks.
  CoinStack operator +(CoinStack other) {
    final List<int> newCoinStack = [...coinStack, ...other.coinStack];
    return CoinStack(coinStack: newCoinStack);
  }

  /// Returns a new stack with the coins from [other] removed.
  ///
  /// Returns `null` if the subtraction is not possible.
  CoinStack? operator -(CoinStack other) {
    final List<int> newCoinStack = [...coinStack];

    for (final coin in other.coinStack) {
      if (!newCoinStack.remove(coin)) {
        return null;
      }
    }

    return CoinStack(coinStack: newCoinStack);
  }
}
