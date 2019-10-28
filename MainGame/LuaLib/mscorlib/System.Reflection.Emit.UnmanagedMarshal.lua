---@class System.Reflection.Emit.UnmanagedMarshal : System.Object
---@field public BaseType System.Runtime.InteropServices.UnmanagedType
---@field public ElementCount number
---@field public GetUnmanagedType System.Runtime.InteropServices.UnmanagedType
---@field public IIDGuid System.Guid
local m = {}

---@static
---@param elemCount number
---@return System.Reflection.Emit.UnmanagedMarshal
function m.DefineByValArray(elemCount) end

---@static
---@param elemCount number
---@return System.Reflection.Emit.UnmanagedMarshal
function m.DefineByValTStr(elemCount) end

---@static
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function m.DefineLPArray(elemType) end

---@static
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function m.DefineSafeArray(elemType) end

---@static
---@param unmanagedType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function m.DefineUnmanagedMarshal(unmanagedType) end

System.Reflection.Emit.UnmanagedMarshal = m
return m
