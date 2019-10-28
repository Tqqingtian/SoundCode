---@class UnityEngine.ADBannerView : System.Object
---@field public loaded boolean
---@field public visible boolean
---@field public layout UnityEngine.ADBannerView.Layout
---@field public position UnityEngine.Vector2
---@field public size UnityEngine.Vector2
local m = {}

---@static
---@param value fun()
function m.add_onBannerWasClicked(value) end

---@static
---@param value fun()
function m.remove_onBannerWasClicked(value) end

---@static
---@param value fun()
function m.add_onBannerWasLoaded(value) end

---@static
---@param value fun()
function m.remove_onBannerWasLoaded(value) end

---@static
---@param type UnityEngine.ADBannerView.Type
---@return boolean
function m.IsAvailable(type) end

UnityEngine.ADBannerView = m
return m
