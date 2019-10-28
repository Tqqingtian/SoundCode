---@class System.ApplicationId : System.Object
---@field public PublicKeyToken string
---@field public Name string
---@field public Version System.Version
---@field public ProcessorArchitecture string
---@field public Culture string
local m = {}

---@return System.ApplicationId
function m:Copy() end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

System.ApplicationId = m
return m
