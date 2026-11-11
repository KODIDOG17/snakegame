Direction = {
  up = "up", down = "down", left = "left", right = "right",
}
snakesize = 0
gridsize = 10
spx = 1
spy = 1
-- love.load
-- love.draw
-- love.update
-- love.keypressed
-- love.resize
screenw, screenh=0,0
function love.load()
  love.window.setMode(500,500)
  love.graphics.setBackgroundColor(1, 0, 0, 1)
  screenw, screenh=love.graphics.getDimensions()
  snakesize = screenw/gridsize
end
function love.keypressed(key)
  if key == "s" then
    direction = "down"
  elseif key == "w" then
      direction = "up"
    elseif key == "a" then
      direction = "left"
      elseif key ==  "d" then
      direction = "right"
    elseif key =="escape" then
    love.event.quit()
  end
end

timer=0
function love.update(dt)
  timer=timer+dt
  if timer<1 then
    return
  else
    timer=0
  if direction == "down" then
  spy = spy + snakesize
elseif direction == "up" then
      spy = spy - snakesize
elseif direction == "left" then
      spx = spx - snakesize
elseif direction == "right" then
  spx = spx + snakesize
  end
  end
end
function love.draw()
  love.graphics.rectangle("fill", spx, spy, snakesize, snakesize)
end

