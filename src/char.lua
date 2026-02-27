char = {}

function char:load()
    char_body = love.physics.newBody(world1, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, "dynamic")
    self.width = 20
    self.height = 20
    self.speed = 50
end

function char:update (dt)
    char:move(dt)
    char:sprint()
end

function char:move(dt)
    if love.keyboard.isDown("a") then
        char_body:applyForce(-10,0)
    end
    if love.keyboard.isDown("d") then
        char_body:applyForce(10,0)
    end
end

function char:sprint()
    if love.keyboard.isDown("lshift") then
        while self.speed < 100 do
            self.speed = self.speed + 1
        end
        self.speed = self.speed + 0
    elseif self.speed > 50 then
        while self.speed > 50 do
            self.speed = self.speed - 5
        end
    end
end

function char:draw()
    local x, y = char_body:getPosition()
    love.graphics.rectangle("fill", x, y, self.width, self.height)
end