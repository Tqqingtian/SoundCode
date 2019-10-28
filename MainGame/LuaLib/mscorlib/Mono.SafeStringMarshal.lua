---@class Mono.SafeStringMarshal : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@static
---@param str string
---@return System.IntPtr
function m.StringToUtf8(str) end

---@static
---@param ptr System.IntPtr
function m.GFree(ptr) end

---@virtual
function m:Dispose() end

Mono.SafeStringMarshal = m
return m
