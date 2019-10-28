---@class System.Runtime.InteropServices.UCOMIEnumMoniker : table
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
---@return System.Runtime.InteropServices.UCOMIEnumMoniker
function m:Clone() end

System.Runtime.InteropServices.UCOMIEnumMoniker = m
return m
