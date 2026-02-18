function love.draw()
	love.graphics.print("Hello World", 200, 300)
	love.graphics.draw(character, 300, 200)
end

function love.load()
	character = love.graphics.newImage("assets/Warrior_1/Idle.png")
end

function love.update(dt)
	down = love.keyboard.isDown("t")
	if down then
		print("Works")
		character.y = character.y - 10
	end
end
