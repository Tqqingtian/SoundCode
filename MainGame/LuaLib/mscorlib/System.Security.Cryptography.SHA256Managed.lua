---@class System.Security.Cryptography.SHA256Managed : System.Security.Cryptography.SHA256
local m = {}

---@virtual
function m:Initialize() end

System.Security.Cryptography.SHA256Managed = m
return m
