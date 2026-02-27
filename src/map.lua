local map = {}

function map:load()
	self.ground = love.physics.newRectangleShape(20, 80)
	self.img = love.graphics.newImage("assets/Ground.png")
end

function map:draw(win_width, win_height)
	-- add dynamic window size scaling
	love.graphics.draw(self.img, 0, win_height)
end

return map
