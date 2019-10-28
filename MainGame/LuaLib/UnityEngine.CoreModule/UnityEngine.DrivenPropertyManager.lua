---@class UnityEngine.DrivenPropertyManager : System.Object
local m = {}

---@static
---@param driver UnityEngine.Object
---@param target UnityEngine.Object
---@param propertyPath string
function m.RegisterProperty(driver, target, propertyPath) end

---@static
---@param driver UnityEngine.Object
---@param target UnityEngine.Object
---@param propertyPath string
function m.UnregisterProperty(driver, target, propertyPath) end

---@static
---@param driver UnityEngine.Object
function m.UnregisterProperties(driver) end

UnityEngine.DrivenPropertyManager = m
return m
