---@class UnityEngine.U2D.SpriteAtlas : UnityEngine.Object
---@field public isVariant boolean
---@field public tag string
---@field public spriteCount number
local m = {}

---@param sprite UnityEngine.Sprite
---@return boolean
function m:CanBindTo(sprite) end

---@param name string
---@return UnityEngine.Sprite
function m:GetSprite(name) end

---@overload fun(sprites:UnityEngine.Sprite[], name:string):
---@param sprites UnityEngine.Sprite[]
---@return number
function m:GetSprites(sprites) end

UnityEngine.U2D.SpriteAtlas = m
return m
