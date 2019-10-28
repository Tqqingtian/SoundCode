---@class Mono.Security.X509.X509Stores : System.Object
---@field public Personal Mono.Security.X509.X509Store
---@field public OtherPeople Mono.Security.X509.X509Store
---@field public IntermediateCA Mono.Security.X509.X509Store
---@field public TrustedRoot Mono.Security.X509.X509Store
---@field public Untrusted Mono.Security.X509.X509Store
local m = {}

function m:Clear() end

---@param storeName string
---@param create boolean
---@return Mono.Security.X509.X509Store
function m:Open(storeName, create) end

Mono.Security.X509.X509Stores = m
return m
