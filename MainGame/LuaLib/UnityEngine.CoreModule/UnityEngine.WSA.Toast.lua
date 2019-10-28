---@class UnityEngine.WSA.Toast : System.Object
---@field public arguments string
---@field public activated boolean
---@field public dismissed boolean
---@field public dismissedByUser boolean
local m = {}

---@static
---@param templ UnityEngine.WSA.ToastTemplate
---@return string
function m.GetTemplate(templ) end

---@overload fun(image:string, text:string): @static
---@static
---@param xml string
---@return UnityEngine.WSA.Toast
function m.Create(xml) end

function m:Show() end

function m:Hide() end

UnityEngine.WSA.Toast = m
return m
