local Circle = require 'lib/shapes/Circle'

local HyperCircle = Circle:extend()

function HyperCircle:new(x, y, radius, lineWidth, outerRadius)
    self.super:new(x, y, radius)
    self.lineWidth, self.outerRadius = lineWidth, outerRadius
end

function HyperCircle:update(deltaTime)
end
function HyperCircle:draw()
    self.super:draw()
    love.graphics.setLineWidth(self.lineWidth)
    love.graphics.circle('line', self.x, self.y, self.outerRadius)
    love.graphics.setLineWidth(1)
end

return HyperCircle