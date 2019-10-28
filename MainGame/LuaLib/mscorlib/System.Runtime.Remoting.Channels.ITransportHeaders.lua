---@class System.Runtime.Remoting.Channels.ITransportHeaders : table
---@field public Item any
local m = {}

---@abstract
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Runtime.Remoting.Channels.ITransportHeaders = m
return m
