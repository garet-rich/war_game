# war_game

This is a toy application of the card game War written in Ruby. Rules and gameplay mechanics are standard, but can be modified for different styles.

**Further reading on War**
https://en.wikipedia.org/wiki/War_(card_game)

**Installation**
- Clone and download the repository
- ruby 2.6.3 and gem minitest are required

**Gameplay**
- The game is started by running ruby war_or_peace_runner.rb from the /lib folder
- The game is automatically run for two players and each turn is displayed to the console
- Each player starts with half of 52 cards, shuffled randomly
- When a player gains all of the other players cards they win
- If there is no winner after 1,000,000 turns the game ends in a draw
