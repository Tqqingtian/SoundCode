---@class UnityEngine.Touch : System.ValueType
---@field public fingerId number
---@field public position UnityEngine.Vector2
---@field public rawPosition UnityEngine.Vector2
---@field public deltaPosition UnityEngine.Vector2
---@field public deltaTime number
---@field public tapCount number
---@field public phase UnityEngine.TouchPhase
---@field public pressure number
---@field public maximumPossiblePressure number
---@field public type UnityEngine.TouchType
---@field public altitudeAngle number
---@field public azimuthAngle number
---@field public radius number
---@field public radiusVariance number
local m = {}

UnityEngine.Touch = m
return m
