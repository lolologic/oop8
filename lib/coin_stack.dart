class CoinStack {
  final List<int> coinStack;

  CoinStack({required this.coinStack});

  int get sumCoinStack {
    int sum = 0;
    for (int i = 0; i < coinStack.length; i++) {
      sum += coinStack[i];
    }
    return sum;
  }

  bool operator <(CoinStack other) {
    return sumCoinStack < other.sumCoinStack;
  }

  bool operator >(CoinStack other) {
    return sumCoinStack > other.sumCoinStack;
  }

  bool operator <=(CoinStack other) {
    return sumCoinStack <= other.sumCoinStack;
  }

  bool operator >=(CoinStack other) {
    return sumCoinStack >= other.sumCoinStack;
  }

  @override
  bool operator ==(Object other) {
    return other is CoinStack && sumCoinStack == other.sumCoinStack;
  }

  @override
  int get hashCode => sumCoinStack.hashCode;

  CoinStack operator +(CoinStack other) {
    final List<int> newCoinStack = [...coinStack, ...other.coinStack];
    return CoinStack(coinStack: newCoinStack);
  }

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
