---@class UnityEngine.Display : System.Object
---@field public displays UnityEngine.Display[] @static
---@field public main UnityEngine.Display @static
---@field public renderingWidth number
---@field public renderingHeight number
---@field public systemWidth number
---@field public systemHeight number
---@field public colorBuffer UnityEngine.RenderBuffer
---@field public depthBuffer UnityEngine.RenderBuffer
---@field public active boolean
local m = {}

---@overload fun(width:number, height:number, refreshRate:number)
function m:Activate() end

---@param width number
---@param height number
---@param x number
---@param y number
function m:SetParams(width, height, x, y) end

---@param w number
---@param h number
function m:SetRenderingResolution(w, h) end

---@static
---@return boolean
function m.MultiDisplayLicense() end

---@static
---@param inputMouseCoordinates UnityEngine.Vector3
---@return UnityEngine.Vector3
function m.RelativeMouseAt(inputMouseCoordinates) end

---@static
---@param value fun()
function m.add_onDisplaysUpdated(value) end

---@static
---@param value fun()
function m.remove_onDisplaysUpdated(value) end

UnityEngine.Display = m
return m
