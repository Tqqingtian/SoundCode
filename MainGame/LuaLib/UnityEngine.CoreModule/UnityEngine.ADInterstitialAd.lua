---@class UnityEngine.ADInterstitialAd : System.Object
---@field public isAvailable boolean @static
---@field public loaded boolean
local m = {}

---@static
---@param value fun()
function m.add_onInterstitialWasLoaded(value) end

---@static
---@param value fun()
function m.remove_onInterstitialWasLoaded(value) end

function m:Show() end

function m:ReloadAd() end

UnityEngine.ADInterstitialAd = m
return m
