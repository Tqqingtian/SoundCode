---@class UnityEngine.WSA.Application : System.Object
---@field public arguments string @static
---@field public advertisingIdentifier string @static
local m = {}

---@static
---@param value fun(width:number, height:number)
function m.add_windowSizeChanged(value) end

---@static
---@param value fun(width:number, height:number)
function m.remove_windowSizeChanged(value) end

---@static
---@param value fun(state:UnityEngine.WSA.WindowActivationState)
function m.add_windowActivated(value) end

---@static
---@param value fun(state:UnityEngine.WSA.WindowActivationState)
function m.remove_windowActivated(value) end

---@static
---@param item fun()
---@param waitUntilDone boolean
function m.InvokeOnAppThread(item, waitUntilDone) end

---@static
---@param item fun()
---@param waitUntilDone boolean
function m.InvokeOnUIThread(item, waitUntilDone) end

---@static
---@param item fun()
---@param waitUntilDone boolean
---@return boolean
function m.TryInvokeOnAppThread(item, waitUntilDone) end

---@static
---@param item fun()
---@param waitUntilDone boolean
---@return boolean
function m.TryInvokeOnUIThread(item, waitUntilDone) end

---@static
---@return boolean
function m.RunningOnAppThread() end

---@static
---@return boolean
function m.RunningOnUIThread() end

UnityEngine.WSA.Application = m
return m
