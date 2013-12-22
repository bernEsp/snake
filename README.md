# Snake
The classic game of the snake that increase its size with every step
well know we added some math to this game. 

Figure it out that you have a matrix for this example a square matrix where
the snake can moved by every step without repeat any step.

#### Conditions:
 - Always star by Zero, Top left
 - Square Matrix
 - The Snake should walk for the complete matrix without repeat steps

#### Options
  - [x] Vertical zigzag
  - [x] Horizontal zigzag
  - [x] Spiral

#### Result
 Return and array with the body of the snake 

#### Matrix examples
[[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]                  

[[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25]]

```ruby
  ruby snake.rb
```
##### Program options pick one!
- x: zigzag left to right
- y: zigzag up to down
- s: spiral left to righ, top right, bottom right
