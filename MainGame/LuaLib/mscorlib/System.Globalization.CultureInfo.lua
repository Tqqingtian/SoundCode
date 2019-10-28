---@class System.Globalization.CultureInfo : System.Object
---@field public InvariantCulture System.Globalization.CultureInfo @static
---@field public CurrentCulture System.Globalization.CultureInfo @static
---@field public CurrentUICulture System.Globalization.CultureInfo @static
---@field public InstalledUICulture System.Globalization.CultureInfo @static
---@field public DefaultThreadCurrentCulture System.Globalization.CultureInfo @static
---@field public DefaultThreadCurrentUICulture System.Globalization.CultureInfo @static
---@field public CultureTypes System.Globalization.CultureTypes
---@field public IetfLanguageTag string
---@field public KeyboardLayoutId number
---@field public LCID number
---@field public Name string
---@field public NativeName string
---@field public Calendar System.Globalization.Calendar
---@field public OptionalCalendars System.Globalization.Calendar[]
---@field public Parent System.Globalization.CultureInfo
---@field public TextInfo System.Globalization.TextInfo
---@field public ThreeLetterISOLanguageName string
---@field public ThreeLetterWindowsLanguageName string
---@field public TwoLetterISOLanguageName string
---@field public UseUserOverride boolean
---@field public CompareInfo System.Globalization.CompareInfo
---@field public IsNeutralCulture boolean
---@field public NumberFormat System.Globalization.NumberFormatInfo
---@field public DateTimeFormat System.Globalization.DateTimeFormatInfo
---@field public DisplayName string
---@field public EnglishName string
---@field public IsReadOnly boolean
local m = {}

---@return System.Globalization.CultureInfo
function m:GetConsoleFallbackUICulture() end

function m:ClearCachedData() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@static
---@param types System.Globalization.CultureTypes
---@return System.Globalization.CultureInfo[]
function m.GetCultures(types) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param ci System.Globalization.CultureInfo
---@return System.Globalization.CultureInfo
function m.ReadOnly(ci) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param formatType System.Type
---@return any
function m:GetFormat(formatType) end

---@overload fun(name:string): @static
---@overload fun(name:string, altName:string): @static
---@static
---@param culture number
---@return System.Globalization.CultureInfo
function m.GetCultureInfo(culture) end

---@static
---@param name string
---@return System.Globalization.CultureInfo
function m.GetCultureInfoByIetfLanguageTag(name) end

---@static
---@param name string
---@return System.Globalization.CultureInfo
function m.CreateSpecificCulture(name) end

System.Globalization.CultureInfo = m
return m
