class AP {
  int a = 5;
  int d = 3;
  int n = 20;

  int computeAP() {
    int tn = a + ((n-1) * d);
    return tn;
  }
}

double computeSum(int tn, int n, int a) {
  double sum = ((a + tn) * (n / 2));
  return sum;
}