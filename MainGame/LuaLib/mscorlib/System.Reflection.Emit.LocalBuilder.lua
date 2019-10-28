---@class System.Reflection.Emit.LocalBuilder : System.Reflection.LocalVariableInfo
---@field public LocalType System.Type
---@field public IsPinned boolean
---@field public LocalIndex number
local m = {}

---@overload fun(name:string)
---@param name string
---@param startOffset number
---@param endOffset number
function m:SetLocalSymInfo(name, startOffset, endOffset) end

System.Reflection.Emit.LocalBuilder = m
return m
