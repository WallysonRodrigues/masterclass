void main(List<String> args) {
  Future<void> fibonnachi(List<BigInt> list, int elements) async {
    bool _mustWait = (list.length > 0 &&  list.length.remainder(1000) == 0);

    if (_mustWait) {
      await Future.delayed(Duration(microseconds: 1));  
    }    

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
}