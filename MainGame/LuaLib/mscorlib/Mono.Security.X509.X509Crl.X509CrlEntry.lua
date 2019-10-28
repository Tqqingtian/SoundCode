---@class Mono.Security.X509.X509Crl.X509CrlEntry : System.Object
---@field public SerialNumber string
---@field public RevocationDate System.DateTime
---@field public Extensions Mono.Security.X509.X509ExtensionCollection
local m = {}

---@return string
function m:GetBytes() end

Mono.Security.X509.X509Crl.X509CrlEntry = m
return m
