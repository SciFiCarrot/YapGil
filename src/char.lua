local char = {}

function char:load(world)
	self.body = love.physics.newBody(world, 0, 0, "dynamic")
	self.shape = love.physics.newRectangleShape(20, 80)
	self.fixture = love.physics.newFixture(self.body, self.shape, 1)
end

function char:update()
	local fx = 0
	local fy = 0
	local strength = 100
	self.x, self.y = self.body:getPosition()

function char:move(dt)
	if love.keyboard.isDown("w", "up") then
		fy = fy - 1 * strength
		-- print("up")
	end
	if love.keyboard.isDown("s", "down") then
		fy = fy + 1 * strength
		-- print("down")
	end
	if love.keyboard.isDown("a", "left") then
		fx = fx - 1 * strength
		-- print("left")
	end
	if love.keyboard.isDown("d", "right") then
		fx = fx + 1 * strength
		-- print("right")
	end

	if love.keyboard.isDown("r") then
		x = 0
		y = 0
		self.body:setPosition(x, y)
	end

	self.body:applyLinearImpulse(fx, fy)
	--	print(fx, fy)
	print(self.x, self.y)
end

function char:draw()
<<<<<<< HEAD
    local x, y = char_body:getPosition()
    love.graphics.rectangle("fill", x, y, self.width, self.height)
	love.graphics.draw(love.graphics.newImage("assets/char.png"), self.x, self.y, 0, 0.3, 0.3)
	-- love.graphics.draw(self.fixture,)
end

return char
