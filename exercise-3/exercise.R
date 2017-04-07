# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('Red', 'Yellow', 'Green', 'Blue', 'Orange', 'Purple')

# Use the `sample` function to select a single marble

sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  return (paste('Your guess was', guess == sample(marbles, 1)))
}

# Play the marble game!

guess <- 'Red'
MarbleGame(guess)

# Bonus: Play the marble game until you win, keeping track of how many tries you take

keepPlaying <- function(guess) {
  result <- MarbleGame(guess)
  count <- 0
  while (result == 'Your guess was FALSE') {
    result <- MarbleGame(guess)
    count <- count + 1
  }
  return (paste('You won in', count, 'times'))
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability