---@class Mono.Security.Cryptography.KeyPairPersistence : System.Object
---@field public Filename string
---@field public KeyValue string
---@field public Parameters System.Security.Cryptography.CspParameters
local m = {}

---@return boolean
function m:Load() end

function m:Save() end

function m:Remove() end

Mono.Security.Cryptography.KeyPairPersistence = m
return m
