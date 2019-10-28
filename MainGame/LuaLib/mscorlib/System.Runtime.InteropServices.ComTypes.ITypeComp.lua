---@class System.Runtime.InteropServices.ComTypes.ITypeComp : table
local m = {}

---@abstract
---@param szName string
---@param lHashVal number
---@param wFlags number
---@return System.Runtime.InteropServices.ComTypes.ITypeInfo, System.Runtime.InteropServices.ComTypes.DESCKIND, System.Runtime.InteropServices.ComTypes.BINDPTR
function m:Bind(szName, lHashVal, wFlags) end

---@abstract
---@param szName string
---@param lHashVal number
---@return System.Runtime.InteropServices.ComTypes.ITypeInfo, System.Runtime.InteropServices.ComTypes.ITypeComp
function m:BindType(szName, lHashVal) end

System.Runtime.InteropServices.ComTypes.ITypeComp = m
return m
