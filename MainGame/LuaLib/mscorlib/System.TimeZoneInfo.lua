---@class System.TimeZoneInfo : System.Object
---@field public Local System.TimeZoneInfo @static
---@field public Utc System.TimeZoneInfo @static
---@field public BaseUtcOffset System.TimeSpan
---@field public DaylightName string
---@field public DisplayName string
---@field public Id string
---@field public StandardName string
---@field public SupportsDaylightSavingTime boolean
local m = {}

---@static
---@param source string
---@return System.TimeZoneInfo
function m.FromSerializedString(source) end

---@return string
function m:ToSerializedString() end

---@static
function m.ClearCachedData() end

---@overload fun(dateTime:System.DateTime, sourceTimeZone:System.TimeZoneInfo, destinationTimeZone:System.TimeZoneInfo): @static
---@overload fun(dateTimeOffset:System.DateTimeOffset, destinationTimeZone:System.TimeZoneInfo): @static
---@static
---@param dateTime System.DateTime
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function m.ConvertTime(dateTime, destinationTimeZone) end

---@overload fun(dateTime:System.DateTime, sourceTimeZoneId:string, destinationTimeZoneId:string): @static
---@overload fun(dateTimeOffset:System.DateTimeOffset, destinationTimeZoneId:string): @static
---@static
---@param dateTime System.DateTime
---@param destinationTimeZoneId string
---@return System.DateTime
function m.ConvertTimeBySystemTimeZoneId(dateTime, destinationTimeZoneId) end

---@static
---@param dateTime System.DateTime
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function m.ConvertTimeFromUtc(dateTime, destinationTimeZone) end

---@overload fun(dateTime:System.DateTime, sourceTimeZone:System.TimeZoneInfo): @static
---@static
---@param dateTime System.DateTime
---@return System.DateTime
function m.ConvertTimeToUtc(dateTime) end

---@overload fun(id:string, baseUtcOffset:System.TimeSpan, displayName:string, standardDisplayName:string, daylightDisplayName:string, adjustmentRules:System.TimeZoneInfo.AdjustmentRule[]): @static
---@overload fun(id:string, baseUtcOffset:System.TimeSpan, displayName:string, standardDisplayName:string, daylightDisplayName:string, adjustmentRules:System.TimeZoneInfo.AdjustmentRule[], disableDaylightSavingTime:boolean): @static
---@static
---@param id string
---@param baseUtcOffset System.TimeSpan
---@param displayName string
---@param standardDisplayName string
---@return System.TimeZoneInfo
function m.CreateCustomTimeZone(id, baseUtcOffset, displayName, standardDisplayName) end

---@overload fun(other:System.TimeZoneInfo): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param id string
---@return System.TimeZoneInfo
function m.FindSystemTimeZoneById(id) end

---@return System.TimeZoneInfo.AdjustmentRule[]
function m:GetAdjustmentRules() end

---@overload fun(dateTimeOffset:System.DateTimeOffset):
---@param dateTime System.DateTime
---@return System.TimeSpan[]
function m:GetAmbiguousTimeOffsets(dateTime) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@return System.TimeZoneInfo[]
function m.GetSystemTimeZones() end

---@overload fun(dateTimeOffset:System.DateTimeOffset):
---@param dateTime System.DateTime
---@return System.TimeSpan
function m:GetUtcOffset(dateTime) end

---@param other System.TimeZoneInfo
---@return boolean
function m:HasSameRules(other) end

---@overload fun(dateTimeOffset:System.DateTimeOffset):
---@param dateTime System.DateTime
---@return boolean
function m:IsAmbiguousTime(dateTime) end

---@overload fun(dateTimeOffset:System.DateTimeOffset):
---@param dateTime System.DateTime
---@return boolean
function m:IsDaylightSavingTime(dateTime) end

---@param dateTime System.DateTime
---@return boolean
function m:IsInvalidTime(dateTime) end

---@virtual
---@return string
function m:ToString() end

System.TimeZoneInfo = m
return m
