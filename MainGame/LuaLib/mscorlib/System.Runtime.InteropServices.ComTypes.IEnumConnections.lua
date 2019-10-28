---@class System.Runtime.InteropServices.ComTypes.IEnumConnections : table
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
function m:Reset() end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IEnumConnections
function m:Clone() end

System.Runtime.InteropServices.ComTypes.IEnumConnections = m
return m
