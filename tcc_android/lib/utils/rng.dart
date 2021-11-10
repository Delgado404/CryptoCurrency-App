import 'dart:math';

numberGenerator() {
  var rng = new Random();
  double valor;

  valor = (rng.nextInt(100) + (rng.nextInt(99) / 100));

  if (rng.nextInt(2) == 1)
    return '+' + valor.toString() + '%';
  else
    return '-' + valor.toString() + '%';
}
