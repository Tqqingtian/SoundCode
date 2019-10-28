---@class System.Runtime.Remoting.Services.TrackingServices : System.Object
---@field public RegisteredHandlers System.Runtime.Remoting.Services.ITrackingHandler[] @static
local m = {}

---@static
---@param handler System.Runtime.Remoting.Services.ITrackingHandler
function m.RegisterTrackingHandler(handler) end

---@static
---@param handler System.Runtime.Remoting.Services.ITrackingHandler
function m.UnregisterTrackingHandler(handler) end

System.Runtime.Remoting.Services.TrackingServices = m
return m
