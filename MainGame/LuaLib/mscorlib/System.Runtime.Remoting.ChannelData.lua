---@class System.Runtime.Remoting.ChannelData : System.Object
---@field public ClientProviders System.Collections.ArrayList
---@field public CustomProperties System.Collections.Hashtable
local m = {}

---@param other System.Runtime.Remoting.ChannelData
function m:CopyFrom(other) end

System.Runtime.Remoting.ChannelData = m
return m
