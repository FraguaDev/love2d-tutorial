# LÖVE Tutorial
A simple repository with some basics and explanations to get started using [LÖVE](https://love2d.org/)

This is currently a Work In Progress. More examples and code will be added in the near future.

## Getting LUA with LÖVE

### Installing lua

Most operating systems already came with lua installed. Otherwise check: https://www.lua.org/download.html

### Installing LÖVE

You can download LÖVE framework from their homepage: https://love2d.org/

You will have to manually add love to your terminal environment.

We suggest installing from brew, APT, pacman or any package manager if available.

LÖVE is a LUA interpreter so you will be executing your scripts with that. love application receive a path as parameter. This path is your project folder, lua will search main.lua as its starting point.

## Preparing

Before getting into code, we should prepare our development environment. We have 3 options:

### SpaceVim

1. Install SpaceVIM, read their [Quick Start Guide](https://spacevim.org/quick-start-guide/)

2. Add Lua Configuration: 

#### 1 Open SpaceVim (by default, it will replace standard Vim)
#### 2 Press SPACE F V D (Space key opens SpaceVim menu, F goes to Files, V goes to VIM and D goes to SpaceVim config file)
#### 3 Add lua layer:
```bash
[[layers]]
  name = 'lang#lua'
```
#### 4. Re open vim to install

### IntelliJ, PHPStorm

#### 1 Install [EmmyLua](https://plugins.jetbrains.com/plugin/9768-emmylua/) plugin from marketplace
#### 2 Add LÖVE to IDE
After some research, we found [this tutorial](https://github.com/kindfulkirby/Emmy-love-api) really useful to add autocomplete to your project.

It just extract .lua files and explain how to add them as a SDK to Intellij.
#### 3 Execute your project from IntelliJ
Just add a new Lua Application to your RUN/DEBUG configurations. There, use love as program and chose your project's root folder as Working Directory and Entry File.

### Using ZenoBrane

There is an IDE made specifically for LUA: https://studio.zerobrane.com/support it comes bundled with interpreters for debugging.

## Some Lua basics

### Classes

As if, Lua does not works with Objects like some mayor Object Oriented languages. It does not comes with a 'class' template. These can be alienating to OO developers.

Fortunately, there is a class module called [classic](https://github.com/rxi/classic) which adds class syntax. Most of it implementation is available in their [readme](https://github.com/rxi/classic)

Lua declares variables global by default. There is a trick to avoid overpopulating your global state. Just declare your new class as local variable in a new file and return at the end.
See this example extracted from: https://github.com/adnzzzzZ/blog/issues/12
```lua
-- in objects/Test.lua
Object = require 'libraries/classic/classic'
local Test = Object:extend()
--- ... 
return Test
``` 

## What next?

Use this repository to inspect a bit more and see a small game in action. Read this nice tutorial in reddit: https://www.reddit.com/r/gamedev/comments/67frk2/tutorial_on_making_a_complete_game_with_lua_and/ There are some differences between that tutorial and current LÖVE state. But it suffices to explain a lot. 