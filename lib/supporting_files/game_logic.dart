import '../game_objects/bomb.dart';
import '../game_objects/monster.dart';
import 'package:flame/flame.dart';

bool gameOver = true; // At start, the game is on over state
double gameSpeed = 125;
int score =0;
List<Monster> monsters = [];
List<Bomb> bombs = [];

stop() {
  gameOver = true;
  monsters.forEach((monster) => monster.markForRemoval());
  bombs.forEach((bang) => bang.markForRemoval());
  // monsters.forEach((monster) => monsters.shouldRemove = true);
  // bombs.forEach((bang) => bang.shouldRemove = true);
  monsters = [];
  bombs = [];
}

// The Method below initiate all game's parameters
start() async {  // Use async to await music
  score = 0;
  gameOver = false;
}

shouldRemove(){   // When this method is called, the monster deasepered
  monsters = [];
}