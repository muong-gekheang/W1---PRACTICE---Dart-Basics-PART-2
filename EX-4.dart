void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  // const order = ['margherita', 'pepperoni', 'pineapple'];
  const order = ['margherita', 'pepperoni'];


  // Your code
  double total = 0;
  bool allExist = true;
  for(var menu in order){
    if(pizzaPrices.containsKey(menu)){
        total += pizzaPrices[menu]!;
      } else{
        print('$menu is not on the menu');
        allExist = false;
    }
    
  }

  if(allExist){
    print('Total: $total');
  }
}
