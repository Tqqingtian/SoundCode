---@class System.Globalization.RegionInfo : System.Object
---@field public CurrentRegion System.Globalization.RegionInfo @static
---@field public CurrencyEnglishName string
---@field public CurrencySymbol string
---@field public DisplayName string
---@field public EnglishName string
---@field public GeoId number
---@field public IsMetric boolean
---@field public ISOCurrencySymbol string
---@field public NativeName string
---@field public CurrencyNativeName string
---@field public Name string
---@field public ThreeLetterISORegionName string
---@field public ThreeLetterWindowsRegionName string
---@field public TwoLetterISORegionName string
local m = {}

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.Globalization.RegionInfo = m
return m
