## Chess game 
This game will returns all potential position on board with assumption that there are no other pieces on the board. 

## Setup
Install bundler gem and run following command
  `bundle install`

## Testing
For testing I have used Rspec gem. to run tests run following command.
  `rspec spec`

## Playing instruction
This is command line game. To get potential positions we need two arguments while run code as follows.
  `ruby lib/chess.rb -piece=Knight -position=d2`

## Need To implement
  1) Remaining piece's
  2) Make it  modular by creating board class.
  3) Allow multiple piece on board and then finding available moves.
  4) DRY code as there are duplication.
