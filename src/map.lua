map = {}

function map:load()
	self.ground = love.physics.newRectangleShape(20, 80)
	self.img = love.graphics.newImage("assets/Ground.png")
end

function map:draw(windwidth, windheight)
	-- add dynamic window size scaling
	love.graphics.draw(self.img, 0, windheight-self.img:getHeight())
end