---@class System.Security.Principal.WindowsImpersonationContext : System.Object
local m = {}

---@virtual
function m:Dispose() end

function m:Undo() end

System.Security.Principal.WindowsImpersonationContext = m
return m
