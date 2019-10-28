---@class System.Runtime.InteropServices.UCOMIEnumConnectionPoints : table
local m = {}

---@abstract
---@param celt number
---@return number, System.Int32
function m:Next(celt) end

---@abstract
---@param celt number
---@return number
function m:Skip(celt) end

---@abstract
---@return number
function m:Reset() end

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumConnectionPoints
function m:Clone() end

System.Runtime.InteropServices.UCOMIEnumConnectionPoints = m
return m
