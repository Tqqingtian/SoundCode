---@class UnityEngine.Playables.PlayableOutputExtensions : System.Object
local m = {}

---@static
---@param output System.ValueType
---@return boolean
function m.IsOutputNull(output) end

---@static
---@param output System.ValueType
---@return boolean
function m.IsOutputValid(output) end

---@static
---@param output System.ValueType
---@return UnityEngine.Object
function m.GetReferenceObject(output) end

---@static
---@param output System.ValueType
---@param value UnityEngine.Object
function m.SetReferenceObject(output, value) end

---@static
---@param output System.ValueType
---@return UnityEngine.Object
function m.GetUserData(output) end

---@static
---@param output System.ValueType
---@param value UnityEngine.Object
function m.SetUserData(output, value) end

---@static
---@param output System.ValueType
---@return UnityEngine.Playables.Playable
function m.GetSourcePlayable(output) end

---@overload fun(output:System.ValueType, value:System.ValueType, port:number) @static
---@static
---@param output System.ValueType
---@param value System.ValueType
function m.SetSourcePlayable(output, value) end

---@static
---@param output System.ValueType
---@return number
function m.GetSourceOutputPort(output) end

---@static
---@param output System.ValueType
---@param value number
function m.SetSourceOutputPort(output, value) end

---@static
---@param output System.ValueType
---@return number
function m.GetWeight(output) end

---@static
---@param output System.ValueType
---@param value number
function m.SetWeight(output, value) end

---@overload fun(output:System.ValueType, origin:UnityEngine.Playables.Playable, notification:UnityEngine.Playables.INotification) @static
---@static
---@param output System.ValueType
---@param origin UnityEngine.Playables.Playable
---@param notification UnityEngine.Playables.INotification
---@param context any
function m.PushNotification(output, origin, notification, context) end

---@static
---@param output System.ValueType
---@return UnityEngine.Playables.INotificationReceiver[]
function m.GetNotificationReceivers(output) end

---@static
---@param output System.ValueType
---@param receiver UnityEngine.Playables.INotificationReceiver
function m.AddNotificationReceiver(output, receiver) end

---@static
---@param output System.ValueType
---@param receiver UnityEngine.Playables.INotificationReceiver
function m.RemoveNotificationReceiver(output, receiver) end

---@static
---@param output System.ValueType
---@return number
function m.GetSourceInputPort(output) end

---@static
---@param output System.ValueType
---@param value number
function m.SetSourceInputPort(output, value) end

UnityEngine.Playables.PlayableOutputExtensions = m
return m
