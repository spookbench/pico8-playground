pico-8 cartridge // http://www.pico-8.com
version 8
__lua__

aliveColor = 7
width = 128
height = 128

boardI = 1
boards = {{}, {}}

for y = 1, height do
  boards[1][y] = {}
  boards[2][y] = {}
  for x = 1, width do
    boards[1][y][x] = 0
    boards[1][y][x] = 0
  end
end

-- draw a blinker
boards[1][60][64] = 1
boards[1][61][64] = 1
boards[1][62][64] = 1

cls()

while true do
  for y = 1, height do
    for x = 1, width do
      pset(x - 1, y - 1, boards[boardI][y][x] * aliveColor)
    end
  end
  flip()
end
