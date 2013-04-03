map = [
  "wwwwwwwwwwwwwwwwwwwwwwwwwwww",
  "w............ww............w",
  "w.wwww.wwwww.ww.wwwww.wwww.w",
  "w*wwww.wwwww.ww.wwwww.wwww*w",
  "w.wwww.wwwww.ww.wwwww.wwww.w",
  "w..........................w",
  "w.wwww.ww.wwwwwwww.ww.wwww.w",
  "w.wwww.ww.wwwwwwww.ww.wwww.w",
  "w......ww....ww....ww......w",
  "wwwwww.wwwww.ww.wwwww.wwwwww",
  "     w.wwwww ww wwwww.w     ",
  "     w.ww          ww.w     ",
  "     w.ww www  www ww.w     ",
  "wwwwww.ww w      w ww.wwwwww",
  "      .   w      w   .      ",
  "wwwwww.ww w      w ww.wwwwww",
  "     w.ww wwwwwwww ww.w     ",
  "     w.ww          ww.w     ",
  "     w.ww wwwwwwww ww.w     ",
  "wwwwww.ww wwwwwwww ww.wwwwww",
  "w............ww............w",
  "w.wwww.wwwww.ww.wwwww.wwww.w",
  "w.wwww.wwwww.ww.wwwww.wwww.w",
  "w*..ww.......p .......ww..*w",
  "www.ww.ww.wwwwwwww.ww.ww.www",
  "www.ww.ww.wwwwwwww.ww.ww.www",
  "w......ww....ww....ww......w",
  "w.wwwwwwwwww.ww.wwwwwwwwww.w",
  "w.wwwwwwwwww.ww.wwwwwwwwww.w",
  "w..........................w",
  "wwwwwwwwwwwwwwwwwwwwwwwwwwww"
]

# add canvas to page
canvas = document.createElement("canvas")
context = canvas.getContext("2d")
gridSize = 14
canvas.width = map[0].length * gridSize
canvas.height = map.length * gridSize

document.body.appendChild(canvas)

addItem = (type,x,y) ->
  context.beginPath()
  switch type
    when 'w'
      context.fillStyle = '#4455A5'
      context.rect(x * gridSize, y * gridSize, gridSize, gridSize)
    when '.'
      context.fillStyle = '#FFFFFF'
      context.arc( x * gridSize + gridSize/2, y * gridSize + gridSize/2, 2, 0, 2 * Math.PI, false)
    when '*'
      context.fillStyle = '#FFFFFF'
      context.arc( x * gridSize + gridSize/2, y * gridSize + gridSize/2, 4, 0, 2 * Math.PI, false)
    when 'p'
      context.fillStyle = 'yellow'
      context.arc( x * gridSize + gridSize/2, y * gridSize + gridSize/2, 7, 0, 2 * Math.PI, false)
  context.fill()

x = 0
y = 0

for line in map
  for char in line
    addItem char, x, y
    x++
  y++
  x = 0

keysDown = {}

addEventListener "keydown", (e) ->
  keysDown[e.keyCode] = true
  console.log e.keyCode
, false

addEventListener "keyup", (e) ->
  delete keysDown[e.keyCode]
, false
