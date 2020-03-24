local Circle = Object:extend()

function Circle:new(x, y, radius)
    self.x, self.y, self.radius, self.creation_time = x, y, radius, love.timer.getTime()
end

function Circle:update(deltaTime)

end

function Circle:draw()
    love.graphics.circle('fill', self.x, self.y, self.radius)
end

return Circle