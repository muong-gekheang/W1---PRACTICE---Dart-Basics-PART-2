import 'dart:io';
void main(){
  List<String> bracketStack = [];
  late String output;
  print('enter the string you want to verify: ');
  String? inputString = stdin.readLineSync();

  if(inputString == null){
    print("The string is empty");
  }
  else{
    for(String char in inputString.split('')){
      if(['{', '[', '('].contains(char)){
        bracketStack.add(char);
      }
      else if(['}', ']', ')'].contains(char)){
        if(bracketStack.isEmpty){
          output = 'Not balanced';
          print(output);
          return;
        }

        String lastBracketInStack = bracketStack.removeLast();
        if(char == '}' && lastBracketInStack == '{' ||
          char == ']' && lastBracketInStack == '[' ||
          char == ')' && lastBracketInStack == '('  
        ){
          output = 'Balanced';
        }
        else{
          output = 'Not Balanced';
        }
        print(output);
        return;
      }
    }
  }

  if(bracketStack.isEmpty){
    output = 'Balanced';
  }else{
    output = 'Not balanced';
  }
  print(output);
}