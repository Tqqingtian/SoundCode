---@class System.Configuration.Assemblies.AssemblyHash : System.ValueType
---@field public Empty System.Configuration.Assemblies.AssemblyHash @static
---@field public Algorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
local m = {}

---@virtual
---@return any
function m:Clone() end

---@return string
function m:GetValue() end

---@param value string
function m:SetValue(value) end

System.Configuration.Assemblies.AssemblyHash = m
return m
