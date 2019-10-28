---@class System.Runtime.InteropServices.HandleRef : System.ValueType
---@field public Wrapper any
---@field public Handle System.IntPtr
local m = {}

---@static
---@param value System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function m.op_Explicit(value) end

---@static
---@param value System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function m.ToIntPtr(value) end

System.Runtime.InteropServices.HandleRef = m
return m
