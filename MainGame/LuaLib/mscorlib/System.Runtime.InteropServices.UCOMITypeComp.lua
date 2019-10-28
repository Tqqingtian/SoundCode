---@class System.Runtime.InteropServices.UCOMITypeComp : table
local m = {}

---@abstract
---@param szName string
---@param lHashVal number
---@param wFlags number
---@return System.Runtime.InteropServices.UCOMITypeInfo, System.Runtime.InteropServices.DESCKIND, System.Runtime.InteropServices.BINDPTR
function m:Bind(szName, lHashVal, wFlags) end

---@abstract
---@param szName string
---@param lHashVal number
---@return System.Runtime.InteropServices.UCOMITypeInfo, System.Runtime.InteropServices.UCOMITypeComp
function m:BindType(szName, lHashVal) end

System.Runtime.InteropServices.UCOMITypeComp = m
return m
