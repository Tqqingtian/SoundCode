---@class Unity.ThrowStub : System.ObjectDisposedException
local m = {}

---@static
function m.ThrowNotSupportedException() end

Unity.ThrowStub = m
return m
