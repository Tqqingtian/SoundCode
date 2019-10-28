---@class UnityEngine.iPhoneInput : System.Object
---@field public orientation UnityEngine.iPhoneOrientation @static
---@field public lastLocation UnityEngine.LocationInfo @static
---@field public accelerationEvents UnityEngine.iPhoneAccelerationEvent[] @static
---@field public touches UnityEngine.iPhoneTouch[] @static
---@field public touchCount number @static
---@field public multiTouchEnabled boolean @static
---@field public accelerationEventCount number @static
---@field public acceleration UnityEngine.Vector3 @static
local m = {}

---@static
---@param index number
---@return UnityEngine.iPhoneTouch
function m.GetTouch(index) end

---@static
---@param index number
---@return UnityEngine.iPhoneAccelerationEvent
function m.GetAccelerationEvent(index) end

UnityEngine.iPhoneInput = m
return m
