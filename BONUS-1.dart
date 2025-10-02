enum Direction { north, east, south, west }

Map<String,Object>robotMovement(int x, int y, Direction direction, String instructions){
  for(var char in instructions.split('')){
    int directionIndex = Direction.values.indexOf(direction);
    if(char == 'R'){
      directionIndex = (directionIndex + 1) % 4;
      direction = Direction.values[directionIndex];
    }else if(char == "L"){
      directionIndex = (directionIndex - 1) % 4;
      direction = Direction.values[directionIndex];
    }else if(char == "A"){
      switch(direction){
        case Direction.north:
          y += 1;
          break;
        case Direction.east:
          x += 1;
          break;
        case Direction.south:
          y -= 1;
          break;
        case Direction.west:
          x -= 1;
          break;
      }
    }
  }
  return {
    'x': x,
    'y': y,
    'direction': direction
  };
}
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  var result = robotMovement(x,y,direction,instructions);

  // Print the final position and direction
  print("Final position:(${result['x']}, ${result['y']})");
  print("Facing: ${(result['direction'] as Direction).name}");
}
