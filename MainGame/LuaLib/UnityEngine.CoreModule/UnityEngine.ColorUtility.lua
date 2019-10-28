---@class UnityEngine.ColorUtility : System.Object
local m = {}

---@static
---@param htmlString string
---@return boolean, UnityEngine.Color
function m.TryParseHtmlString(htmlString) end

---@static
---@param color UnityEngine.Color
---@return string
function m.ToHtmlStringRGB(color) end

---@static
---@param color UnityEngine.Color
---@return string
function m.ToHtmlStringRGBA(color) end

UnityEngine.ColorUtility = m
return m
