void main(List<String> args) {
  num _calculate(num n1, num n2, num n3) => (n1 * n2) / n3;

  num ruleOfThree(NumbersToCalc numbers) {
    switch (numbers.isEmpty) {
      case WhoIsEmpty.group1_1:
        return _calculate(
          numbers.group1_2!,
          numbers.group2_1!,
          numbers.group2_2!,
        );
      case WhoIsEmpty.group1_2:
        return _calculate(
          numbers.group1_1!,
          numbers.group2_2!,
          numbers.group2_1!,
        );
      case WhoIsEmpty.group2_1:
        return _calculate(
          numbers.group1_1!,
          numbers.group2_2!,
          numbers.group1_2!,
        );
      case WhoIsEmpty.group2_2:
        return _calculate(
          numbers.group1_2!,
          numbers.group2_1!,
          numbers.group1_1!,
        );
      default:
        return 0;
    }
  }

  print(ruleOfThree(
    NumbersToCalc(
      group1_1: 100,
      group1_2: 10,
      group2_1: 2,
    ),
  ));
}

enum WhoIsEmpty {
  group1_1,
  group1_2,
  group2_1,
  group2_2,
}

class NumbersToCalc {
  NumbersToCalc({
    this.group1_1,
    this.group1_2,
    this.group2_1,
    this.group2_2,
  }) : assert(
          (group1_1 == null && group1_2 != null && group2_1 != null && group2_2 != null) || (group1_2 == null && group1_1 != null && group2_1 != null && group2_2 != null) || (group2_1 == null && group2_2 != null && group1_1 != null && group1_2 != null) || (group2_2 == null && group2_1 != null && group1_1 != null && group1_2 != null),
          'Only one argument can be null',
        );

  num? group1_1;
  num? group1_2;
  num? group2_1;
  num? group2_2;

  WhoIsEmpty get isEmpty {
    if (group1_1 == null) {
      return WhoIsEmpty.group1_1;
    } else if (group1_2 == null) {
      return WhoIsEmpty.group1_2;
    } else if (group2_1 == null) {
      return WhoIsEmpty.group2_1;
    } else {
      return WhoIsEmpty.group2_2;
    }
  }
}
