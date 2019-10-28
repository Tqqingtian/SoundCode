---@class System.Buffers.IRetainable : table
local m = {}

---@abstract
function m:Retain() end

---@abstract
---@return boolean
function m:Release() end

System.Buffers.IRetainable = m
return m
