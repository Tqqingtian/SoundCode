---@class UnityEngine.iOS.ADInterstitialAd : System.Object
---@field public isAvailable boolean @static
---@field public loaded boolean
local m = {}

function m:Show() end

function m:ReloadAd() end

---@static
---@param value fun()
function m.add_onInterstitialWasLoaded(value) end

---@static
---@param value fun()
function m.remove_onInterstitialWasLoaded(value) end

---@static
---@param value fun()
function m.add_onInterstitialWasViewed(value) end

---@static
---@param value fun()
function m.remove_onInterstitialWasViewed(value) end

UnityEngine.iOS.ADInterstitialAd = m
return m
