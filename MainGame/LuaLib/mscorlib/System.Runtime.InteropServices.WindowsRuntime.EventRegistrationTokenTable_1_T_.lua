---@class System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable_1_T_ : System.Object
---@field public InvocationList any
local m = {}

---@param handler any
---@return System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function m:AddEventHandler(handler) end

---@overload fun(handler:any)
---@param token System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function m:RemoveEventHandler(token) end

---@static
---@param refEventTable System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable_1_T_
---@return System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable_1_T_, System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable_1_T_
function m.GetOrCreateEventRegistrationTokenTable(refEventTable) end

System.Runtime.InteropServices.WindowsRuntime.EventRegistrationTokenTable_1_T_ = m
return m
