--
-- Created by IntelliJ IDEA.
-- User: mdepietro
-- Date: 20/03/2020
-- Time: 20:06
-- To change this template use File | Settings | File Templates.
--

GameObject = Object:extend()

function GameObject:new(area, x, y, opts)
    local opts = opts or {}
    if opts then for k, v in pairs(opts) do self[k] = v end end

    self.area = area
    self.x, self.y = x, y
    self.id = UUID()
    self.dead = false
    self.timer = Timer()
end

function GameObject:update(dt)
    if self.timer then self.timer:update(dt) end
end

function GameObject:draw()

end

