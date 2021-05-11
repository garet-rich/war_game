# war_game

This is a toy application of the card game War written in Ruby. Two players split a standard deck of 52 cards and play until either wins or the game ends in a draw. Each turn is either basic, war, or mutually assured destruction.

**Further reading on rules of War**
https://en.wikipedia.org/wiki/War_(card_game)

**Installation**
- Clone and download the repository
- at least ruby 2.6.3 and minitest are required

**Gameplay**
- The game is started by running ruby war_or_peace_runner.rb from the /lib folder
- The game is automatically run for two players and each turn is displayed to the console
- Each player starts with half of 52 cards, shuffled randomly
- When a player gains all of the other players cards they win
- If there is no winner after 999,999,999 turns the game ends in a draw
