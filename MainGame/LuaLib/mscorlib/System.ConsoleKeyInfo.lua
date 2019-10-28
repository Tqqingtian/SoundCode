---@class System.ConsoleKeyInfo : System.ValueType
---@field public KeyChar number
---@field public Key System.ConsoleKey
---@field public Modifiers System.ConsoleModifiers
local m = {}

---@overload fun(obj:System.ConsoleKeyInfo):
---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@static
---@param a System.ConsoleKeyInfo
---@param b System.ConsoleKeyInfo
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.ConsoleKeyInfo
---@param b System.ConsoleKeyInfo
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

System.ConsoleKeyInfo = m
return m
