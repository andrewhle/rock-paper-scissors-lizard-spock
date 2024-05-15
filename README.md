# Rock-Paper-Scissors-Lizard-Spock Game Simulation

This repository contains Ruby code for simulating a game of Rock-Paper-Scissors-Lizard-Spock (RPSLS). It includes multiple classes that handle different aspects of the game, such as elements, players, and game history.

## Files and Classes

- `element.rb`: Defines the `Element` class and its subclasses (`Rock`, `Paper`, `Scissors`, `Lizard`, `Spock`). The `Element` class has an attribute accessor for the name and includes an abstract method `compare_to` that is overridden in each subclass to define the game logic.

- `player.rb`: Contains the `Player` class and several specific player types (`StupidBot`, `RandomBot`, `IterativeBot`, `LastPlayBot`, `Human`). Each player type has a different strategy for selecting moves.

- `history.rb`: Implements the `History` class for logging gameplay details, such as moves played and the score.

- `lab3.rb`: The main executable file that simulates the game, handles user input for player selection, and prints game results.

## Gameplay Description

Players choose from one of five moves:
1. Rock
2. Paper
3. Scissors
4. Lizard
5. Spock

Each move beats two other moves according to predefined rules (e.g., "Paper covers Rock"). The game consists of five rounds, and the player with the most wins at the end is declared the game winner.

## How to Run

To run the game, execute the `lab3.rb` file in your Ruby environment:
```bash
ruby lab3.rb
