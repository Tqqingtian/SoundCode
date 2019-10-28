---@class System.Runtime.InteropServices.ITypeLibExporterNotifySink : table
local m = {}

---@abstract
---@param eventKind System.Runtime.InteropServices.ExporterEventKind
---@param eventCode number
---@param eventMsg string
function m:ReportEvent(eventKind, eventCode, eventMsg) end

---@abstract
---@param assembly System.Reflection.Assembly
---@return any
function m:ResolveRef(assembly) end

System.Runtime.InteropServices.ITypeLibExporterNotifySink = m
return m
