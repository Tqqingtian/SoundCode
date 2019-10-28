---@class System.Runtime.InteropServices.ComTypes.IEnumVARIANT : table
local m = {}

---@abstract
---@param celt number
---@param pceltFetched System.IntPtr
---@return number
function m:Next(celt, pceltFetched) end

---@abstract
---@param celt number
---@return number
function m:Skip(celt) end

---@abstract
---@return number
function m:Reset() end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IEnumVARIANT
function m:Clone() end

System.Runtime.InteropServices.ComTypes.IEnumVARIANT = m
return m
