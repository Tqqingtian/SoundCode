---@class UnityEngine.Application.AdvertisingIdentifierCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param advertisingId string
---@param trackingEnabled boolean
---@param errorMsg string
function m:Invoke(advertisingId, trackingEnabled, errorMsg) end

---@virtual
---@param advertisingId string
---@param trackingEnabled boolean
---@param errorMsg string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(advertisingId, trackingEnabled, errorMsg, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Application.AdvertisingIdentifierCallback = m
return m
