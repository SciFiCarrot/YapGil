char = {}

function char:load(world1)
	self.body = love.physics.newBody(world1, 0, 0, "dynamic")
	self.shape = love.physics.newRectangleShape(20, 80)
	self.fixture = love.physics.newFixture(self.body, self.shape, 1)
end

function char:update()
	fx = 0
	fy = 0
	strength = 100
	self.x, self.y = self.body:getPosition()
end

function char:move(dt)
	if love.keyboard.isDown("w", "up") then
		fy = fy - 1 * strength * dt
		-- print("up")
	end
	if love.keyboard.isDown("s", "down") then
		fy = fy + 1 * strength * dt
		-- print("down")
	end
	if love.keyboard.isDown("a", "left") then
		fx = fx - 1 * strength * dt
		-- print("left")
	end
	if love.keyboard.isDown("d", "right") then
		fx = fx + 1 * strength * dt
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
	love.graphics.draw(love.graphics.newImage("assets/char.png"), self.x, self.y, 0, 0.3, 0.3)
	-- love.graphics.draw(self.fixture,)
end

