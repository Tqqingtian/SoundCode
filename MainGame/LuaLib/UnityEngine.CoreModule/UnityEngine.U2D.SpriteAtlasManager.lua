---@class UnityEngine.U2D.SpriteAtlasManager : System.Object
local m = {}

---@static
---@param value fun(arg1:string, arg2:fun(obj:UnityEngine.U2D.SpriteAtlas))
function m.add_atlasRequested(value) end

---@static
---@param value fun(arg1:string, arg2:fun(obj:UnityEngine.U2D.SpriteAtlas))
function m.remove_atlasRequested(value) end

---@static
---@param value fun(obj:UnityEngine.U2D.SpriteAtlas)
function m.add_atlasRegistered(value) end

---@static
---@param value fun(obj:UnityEngine.U2D.SpriteAtlas)
function m.remove_atlasRegistered(value) end

UnityEngine.U2D.SpriteAtlasManager = m
return m
