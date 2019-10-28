---@class System.Security.Cryptography.SHA1Managed : System.Security.Cryptography.SHA1
local m = {}

---@virtual
function m:Initialize() end

System.Security.Cryptography.SHA1Managed = m
return m
