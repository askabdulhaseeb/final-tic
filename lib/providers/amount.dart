enum AmountEnum {
  g_500,
  g_1k,
  g_5k,
  g_10k,
  g_100k,
  g_250k,
  g_1M,
  g_10M,
}

String convertAmountInStringCodeFromAmount(double amount) {
  double value;
  if (amount < 1000) {
    value = amount as double;
    return '$value';
  } else if (amount < 1000000) {
    value = (amount / 1000);
    return '${value.toStringAsFixed(1)} K';
  } else if (amount < 100000000) {
    value = (amount / 100000);
    return '${value.toStringAsFixed(1)} M';
  } else if (amount <= 10000000000) {
    value = (amount / 100000000);
    return '${value.toStringAsFixed(1)} B';
  } else if (amount <= 10000000000000) {
    value = (amount / 10000000000);
    return '${value.toStringAsFixed(1)} T';
  } else if (amount <= 1000000000000000) {
    value = (amount / 1000000000000);
    return '${value.toStringAsFixed(1)} Q';
  } else {
    value = (amount / 1000000000000);
    return '${value.toStringAsFixed(1)} Q';
  }
}

String getAmountInStringFromEnum(AmountEnum amountEnum) {
  if (amountEnum == AmountEnum.g_500)
    return '500';
  else if (amountEnum == AmountEnum.g_1k)
    return '1 K';
  else if (amountEnum == AmountEnum.g_10k)
    return '10 K';
  else if (amountEnum == AmountEnum.g_100k)
    return '100 K';
  else if (amountEnum == AmountEnum.g_250k)
    return '250 K';
  else if (amountEnum == AmountEnum.g_1M)
    return '1 M';
  else
    return '10 M';
}

String getAmountInStringFormInt(int count) {
  if (count == 0)
    return '500';
  else if (count == 1)
    return '1 K';
  else if (count == 2)
    return '10 K';
  else if (count == 3)
    return '100 K';
  else if (count == 4)
    return '250 K';
  else if (count == 5)
    return '1 M';
  else
    return '10 M';
}

double getAmountInDoubleFormInt(int count) {
  if (count == 0)
    return 500;
  else if (count == 1)
    return 1000;
  else if (count == 2)
    return 10000;
  else if (count == 3)
    return 100000;
  else if (count == 4)
    return 250000;
  else if (count == 5)
    return 1000000;
  else
    return 10000000;
}

double getAmountInDoubleFormString(String count) {
  if (count == '500')
    return 500;
  else if (count == '1 K')
    return 1000;
  else if (count == '10 K')
    return 10000;
  else if (count == '100 K')
    return 100000;
  else if (count == '250 K')
    return 250000;
  else if (count == '1 M')
    return 1000000;
  else
    return 10000000;
}

int getAmountInintFromEnum(AmountEnum amountEnum) {
  if (amountEnum == AmountEnum.g_500)
    return 500;
  else if (amountEnum == AmountEnum.g_1k)
    return 1000;
  else if (amountEnum == AmountEnum.g_10k)
    return 10000;
  else if (amountEnum == AmountEnum.g_100k)
    return 100000;
  else if (amountEnum == AmountEnum.g_250k)
    return 250000;
  else if (amountEnum == AmountEnum.g_1M)
    return 1000000;
  else
    return 10000000;
}
