---@class UnityEngine.CrashReport : System.Object
---@field public reports UnityEngine.CrashReport[] @static
---@field public lastReport UnityEngine.CrashReport @static
---@field public time System.DateTime
---@field public text string
local m = {}

---@static
function m.RemoveAll() end

function m:Remove() end

UnityEngine.CrashReport = m
return m
