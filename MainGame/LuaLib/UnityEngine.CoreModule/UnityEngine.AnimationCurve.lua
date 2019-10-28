---@class UnityEngine.AnimationCurve : System.Object
---@field public keys UnityEngine.Keyframe[]
---@field public Item UnityEngine.Keyframe
---@field public length number
---@field public preWrapMode UnityEngine.WrapMode
---@field public postWrapMode UnityEngine.WrapMode
local m = {}

---@param time number
---@return number
function m:Evaluate(time) end

---@overload fun(key:UnityEngine.Keyframe):
---@param time number
---@param value number
---@return number
function m:AddKey(time, value) end

---@param index number
---@param key UnityEngine.Keyframe
---@return number
function m:MoveKey(index, key) end

---@param index number
function m:RemoveKey(index) end

---@param index number
---@param weight number
function m:SmoothTangents(index, weight) end

---@static
---@param timeStart number
---@param timeEnd number
---@param value number
---@return UnityEngine.AnimationCurve
function m.Constant(timeStart, timeEnd, value) end

---@static
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return UnityEngine.AnimationCurve
function m.Linear(timeStart, valueStart, timeEnd, valueEnd) end

---@static
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return UnityEngine.AnimationCurve
function m.EaseInOut(timeStart, valueStart, timeEnd, valueEnd) end

---@overload fun(other:UnityEngine.AnimationCurve): @virtual
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.AnimationCurve = m
return m
