---@class UnityEngine.LocationService : System.Object
---@field public isEnabledByUser boolean
---@field public status UnityEngine.LocationServiceStatus
---@field public lastData UnityEngine.LocationInfo
local m = {}

---@overload fun(desiredAccuracyInMeters:number)
---@overload fun()
---@param desiredAccuracyInMeters number
---@param updateDistanceInMeters number
function m:Start(desiredAccuracyInMeters, updateDistanceInMeters) end

function m:Stop() end

UnityEngine.LocationService = m
return m
