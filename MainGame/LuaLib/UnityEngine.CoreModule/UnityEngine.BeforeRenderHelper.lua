---@class UnityEngine.BeforeRenderHelper : System.Object
local m = {}

---@static
---@param callback fun()
function m.RegisterCallback(callback) end

---@static
---@param callback fun()
function m.UnregisterCallback(callback) end

---@static
function m.Invoke() end

UnityEngine.BeforeRenderHelper = m
return m
