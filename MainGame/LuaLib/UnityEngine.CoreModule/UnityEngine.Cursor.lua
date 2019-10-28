---@class UnityEngine.Cursor : System.Object
---@field public visible boolean @static
---@field public lockState UnityEngine.CursorLockMode @static
local m = {}

---@static
---@param texture UnityEngine.Texture2D
---@param hotspot UnityEngine.Vector2
---@param cursorMode UnityEngine.CursorMode
function m.SetCursor(texture, hotspot, cursorMode) end

UnityEngine.Cursor = m
return m
