---@class System.Runtime.InteropServices.ComTypes.IEnumMoniker : table
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
---@return System.Runtime.InteropServices.ComTypes.IEnumMoniker
function m:Clone() end

System.Runtime.InteropServices.ComTypes.IEnumMoniker = m
return m
