---@class System.Runtime.InteropServices.UCOMIEnumVARIANT : table
local m = {}

---@abstract
---@param celt number
---@param rgvar number
---@param pceltFetched number
---@return number
function m:Next(celt, rgvar, pceltFetched) end

---@abstract
---@param celt number
---@return number
function m:Skip(celt) end

---@abstract
---@return number
function m:Reset() end

---@abstract
---@param ppenum number
function m:Clone(ppenum) end

System.Runtime.InteropServices.UCOMIEnumVARIANT = m
return m
