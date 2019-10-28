---@class System.Runtime.InteropServices.ComEventsHelper : System.Object
local m = {}

---@static
---@param rcw any
---@param iid System.Guid
---@param dispid number
---@param d fun(...:any|any[]):
function m.Combine(rcw, iid, dispid, d) end

---@static
---@param rcw any
---@param iid System.Guid
---@param dispid number
---@param d fun(...:any|any[]):
---@return fun(...:any|any[]):
function m.Remove(rcw, iid, dispid, d) end

System.Runtime.InteropServices.ComEventsHelper = m
return m
