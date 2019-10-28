---@class UnityEngine.Playables.INotificationReceiver : table
local m = {}

---@abstract
---@param origin UnityEngine.Playables.Playable
---@param notification UnityEngine.Playables.INotification
---@param context any
function m:OnNotify(origin, notification, context) end

UnityEngine.Playables.INotificationReceiver = m
return m
