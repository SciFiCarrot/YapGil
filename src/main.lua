require ("char")

function love.load()
    world1 = love.physics.newWorld(0,0,windwidth,windheight,10,0,true)
    char:load()
end

function love.update(dt)
    char:update(dt)
end

function love.draw()
    char:draw()
    map:draw(windwidth, windheight)
end