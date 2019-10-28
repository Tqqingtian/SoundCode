---@class Mono.Security.StrongNameManager : System.Object
local m = {}

---@static
---@param filename string
function m.LoadConfig(filename) end

---@static
---@param token string
---@return string
function m.GetMappedPublicKey(token) end

---@static
---@param an System.Reflection.AssemblyName
---@return boolean
function m.MustVerify(an) end

---@virtual
---@return string
function m:ToString() end

Mono.Security.StrongNameManager = m
return m
