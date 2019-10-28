---@class System.Runtime.InteropServices.UCOMIEnumConnections : table
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
function m:Reset() end

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumConnections
function m:Clone() end

System.Runtime.InteropServices.UCOMIEnumConnections = m
return m
