---@class MessageBox : UnityEngine.MonoBehaviour
local m = {}

---@overload fun(message:string, title:string) @static
---@static
---@param message string
---@param title string
---@param onFinished fun()
function m.ShowAlertBox(message, title, onFinished) end

---@overload fun(message:string, title:string) @static
---@static
---@param message string
---@param title string
---@param onFinished fun(obj:boolean)
function m.ShowConfirmBox(message, title, onFinished) end

MessageBox = m
return m
