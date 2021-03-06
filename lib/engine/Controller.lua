---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mdepietro.
--- DateTime: 05/04/2020 15:57
---

Controller = Object:extend()
Input = require 'vendor/input/input'

function Controller:new(object)
    self.gameObject = object
    print(self.gameObject.actions)
    Controller:registerTriggers()
    self.gameObject.actions["trigger"] = function()
        Controller:readKeys()
    end
end

function Controller:registerTriggers()
    input:bind('s', 'abajo')
    input:bind('w', 'arriba')
    input:bind('a', 'izquierda')
    input:bind('d', 'derecha')
end

function Controller:readKeys()
    if input:pressed('abajo') then
        Controller:register("accDown", function()
            self.gameObject.dy = 1
            self:accelerate()
        end)
    end
    if input:released('abajo') then
        self.gameObject.dy = 0
        Controller:freeze("accDown")
    end
    if input:pressed('arriba') then
        Controller:register("accUp", function()
            self.gameObject.dy = -1
            self:accelerate()
        end)
    end
    if input:released('arriba') then
        self.gameObject.dy = 0
        Controller:freeze("accUp")
    end
    if input:pressed('izquierda') then
        Controller:register("accLeft", function()
            self.gameObject.dx = -1
            self:accelerate()
        end)
    end
    if input:released('izquierda') then
        self.gameObject.dx = 0
        Controller:freeze("accLeft")
    end
    if input:pressed('derecha') then
        Controller:register("accRight", function()
            self.gameObject.dx = 1
            self:accelerate()
        end)
    end
    if input:released('derecha') then
        self.gameObject.dx = 0
        Controller:freeze("accRight")
    end
end

function Controller:register(actionName, action)
    self.gameObject.actions[actionName] = action
end

function Controller:accelerate()
    self.gameObject.speed = self.gameObject.speed + self.gameObject.accPower
end

function Controller:freeze(actionName)
    self.gameObject.actions[actionName] = nil
    self:stop()
end

function Controller:stop()
    if (self.gameObject.dx == 0 and self.gameObject.dy == 0) then
        self.gameObject.speed = 0
    end
end