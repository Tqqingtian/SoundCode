---@class System.Runtime.Remoting.Messaging.CallContext : System.Object
---@field public HostContext any @static
local m = {}

---@static
---@param name string
function m.FreeNamedDataSlot(name) end

---@static
---@param name string
---@return any
function m.LogicalGetData(name) end

---@static
---@param name string
---@return any
function m.GetData(name) end

---@static
---@param name string
---@param data any
function m.SetData(name, data) end

---@static
---@param name string
---@param data any
function m.LogicalSetData(name, data) end

---@static
---@return System.Runtime.Remoting.Messaging.Header[]
function m.GetHeaders() end

---@static
---@param headers System.Runtime.Remoting.Messaging.Header[]
function m.SetHeaders(headers) end

System.Runtime.Remoting.Messaging.CallContext = m
return m
