---@class System.Runtime.InteropServices.ITypeLibExporterNameProvider : table
local m = {}

---@abstract
---@return string[]
function m:GetNames() end

System.Runtime.InteropServices.ITypeLibExporterNameProvider = m
return m
