---@class System.Runtime.InteropServices.GCHandle : System.ValueType
---@field public IsAllocated boolean
---@field public Target any
local m = {}

---@return System.IntPtr
function m:AddrOfPinnedObject() end

---@overload fun(value:any, type:System.Runtime.InteropServices.GCHandleType): @static
---@static
---@param value any
---@return System.Runtime.InteropServices.GCHandle
function m.Alloc(value) end

function m:Free() end

---@overload fun(value:System.IntPtr): @static
---@static
---@param value System.Runtime.InteropServices.GCHandle
---@return System.IntPtr
function m.op_Explicit(value) end

---@static
---@param a System.Runtime.InteropServices.GCHandle
---@param b System.Runtime.InteropServices.GCHandle
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Runtime.InteropServices.GCHandle
---@param b System.Runtime.InteropServices.GCHandle
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param value System.IntPtr
---@return System.Runtime.InteropServices.GCHandle
function m.FromIntPtr(value) end

---@static
---@param value System.Runtime.InteropServices.GCHandle
---@return System.IntPtr
function m.ToIntPtr(value) end

System.Runtime.InteropServices.GCHandle = m
return m
