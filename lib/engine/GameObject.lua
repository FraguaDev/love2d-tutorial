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
    if opts then
        for k, v in pairs(opts) do
            self[k] = v
        end
    end
    self.area = area
    self.x, self.y = x, y
    self.dx, self.dy = 0, 0
    self.id = UUID()
    self.dead = false
    self.hp = 100
    self.speed = 0
    self.maxSpeed = 1
    self.acceleration = 0
    self.accPower = 0.001
    self.breakable = true
    self.timer = Timer()
end

function GameObject:update(dt)
    if self.timer then
        self.timer:update(dt)
    end
    self:speedBreaker()
    self.dx, self.dy = Motion:calculateDiagonal(self.dx, self.dy)
    self.dx, self.dy = Motion:calculateMotion(self.dx, self.dy, self.speed)
    print("speed", self.speed)
    print("dx, dy", self.dx, self.dy)
    self:move()
end

function GameObject:move()
    self.x, self.y = Motion:move(self.x, self.y, self.dx, self.dy, self.speed)
end

function GameObject:speedBreaker()
    if self.speed >= self.maxSpeed then
        self.speed = self.maxSpeed
    end
end

function GameObject:draw()

end

