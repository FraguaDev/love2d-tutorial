---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mdepietro.
--- DateTime: 20/03/2020 18:36
---}
Object = require 'vendor/classic/classic'

AInitRoom = Object:extend()

function AInitRoom:new()
    self.area = Area()
    self.area:addGameObject('GameCircle',500,500, {radius = 200})
end

function AInitRoom:update(dt)
    self.area:update(dt)
end

function AInitRoom:draw()
    self.area:draw()
end