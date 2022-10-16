void main(List<String> args) {
  void fibonnachi(List<int> list, int elements) {
    const _initialValues = <int>[0,1];
    
    switch (list.length) {
      case 0:
        list.addAll(_initialValues);
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