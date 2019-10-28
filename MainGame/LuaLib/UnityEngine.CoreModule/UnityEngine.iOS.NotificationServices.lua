---@class UnityEngine.iOS.NotificationServices : System.Object
---@field public localNotificationCount number @static
---@field public remoteNotificationCount number @static
---@field public enabledNotificationTypes UnityEngine.iOS.NotificationType @static
---@field public registrationError string @static
---@field public deviceToken string @static
---@field public localNotifications UnityEngine.iOS.LocalNotification[] @static
---@field public remoteNotifications UnityEngine.iOS.RemoteNotification[] @static
---@field public scheduledLocalNotifications UnityEngine.iOS.LocalNotification[] @static
local m = {}

---@static
function m.ClearLocalNotifications() end

---@static
function m.ClearRemoteNotifications() end

---@overload fun(notificationTypes:UnityEngine.iOS.NotificationType, registerForRemote:boolean) @static
---@static
---@param notificationTypes UnityEngine.iOS.NotificationType
function m.RegisterForNotifications(notificationTypes) end

---@static
---@param notification UnityEngine.iOS.LocalNotification
function m.ScheduleLocalNotification(notification) end

---@static
---@param notification UnityEngine.iOS.LocalNotification
function m.PresentLocalNotificationNow(notification) end

---@static
---@param notification UnityEngine.iOS.LocalNotification
function m.CancelLocalNotification(notification) end

---@static
function m.CancelAllLocalNotifications() end

---@static
function m.UnregisterForRemoteNotifications() end

---@static
---@param index number
---@return UnityEngine.iOS.LocalNotification
function m.GetLocalNotification(index) end

---@static
---@param index number
---@return UnityEngine.iOS.RemoteNotification
function m.GetRemoteNotification(index) end

UnityEngine.iOS.NotificationServices = m
return m
