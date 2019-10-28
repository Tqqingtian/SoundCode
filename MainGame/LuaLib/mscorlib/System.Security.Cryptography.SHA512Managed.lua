---@class System.Security.Cryptography.SHA512Managed : System.Security.Cryptography.SHA512
local m = {}

---@virtual
function m:Initialize() end

System.Security.Cryptography.SHA512Managed = m
return m
