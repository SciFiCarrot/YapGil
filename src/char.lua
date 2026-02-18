char = {}

function char:load()
    self.x = love.graphics.getWidth() / 2
    self.y = love.graphics.getHeight() / 2
    self.width = 20
    self.height = 20
    self.speed = 50
end

function char:update (dt)
    char:move(dt)
    char:sprint()
end

function char:move(dt)
    if love.keyboard.isDown("w") then
        self.y = self.y - self.speed * dt
    end
    if love.keyboard.isDown("s") then
        self.y = self.y + self.speed * dt
    end
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    end
    if love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
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
    love.graphics.draw(love.graphics.newImage("assets/char.png"), self.x, self.y,0,0.3,0.3)
end