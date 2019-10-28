---@class TQ.LuaManager : TQ.ManagerBase
---@field public luaEnv XLua.LuaEnv @static
local m = {}

function m:Init() end

---@param str string
function m:DoString(str) end

TQ.LuaManager = m
return m
