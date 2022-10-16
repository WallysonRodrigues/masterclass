void main(List<String> args) {
  void fibonnachi(List<int> list, int elements) {
    switch (list.length) {
      case 0:
        list.add(1);
        break;
      case 1:
        list.add(2);
        break;        
      default:        
        int sum = list[list.length-2] + list[list.length-1];
        list.add(sum);
        break;
    }

   if (list.length == elements) {
      print(list);
      return;
    }
    else {
      fibonnachi(list, elements);
    }
  }

  fibonnachi(<int>[], 15);
}