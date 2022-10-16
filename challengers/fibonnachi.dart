void main(List<String> args) {
  void fibonnachi(List<BigInt> list, int elements) {
    var _initialValues = <BigInt>[BigInt.zero, BigInt.one];
    
    switch (list.length) {
      case 0:
        list.addAll(_initialValues);
        break;      
      default:        
        BigInt sum = list[list.length-2] + list[list.length-1];
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



  fibonnachi(<BigInt>[], 10);
  /// Perguntar ao Jacob, porque esta dando erro no dart quando eu mando a lista ter 15000 elementos
}