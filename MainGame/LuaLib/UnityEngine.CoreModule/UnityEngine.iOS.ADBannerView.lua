---@class UnityEngine.iOS.ADBannerView : System.Object
---@field public loaded boolean
---@field public visible boolean
---@field public layout UnityEngine.iOS.ADBannerView.Layout
---@field public position UnityEngine.Vector2
---@field public size UnityEngine.Vector2
local m = {}

---@static
---@param type UnityEngine.iOS.ADBannerView.Type
---@return boolean
function m.IsAvailable(type) end

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
---@param value fun()
function m.add_onBannerFailedToLoad(value) end

---@static
---@param value fun()
function m.remove_onBannerFailedToLoad(value) end

UnityEngine.iOS.ADBannerView = m
return m
