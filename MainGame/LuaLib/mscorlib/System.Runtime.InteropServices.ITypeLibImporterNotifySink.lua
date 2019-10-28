---@class System.Runtime.InteropServices.ITypeLibImporterNotifySink : table
local m = {}

---@abstract
---@param eventKind System.Runtime.InteropServices.ImporterEventKind
---@param eventCode number
---@param eventMsg string
function m:ReportEvent(eventKind, eventCode, eventMsg) end

---@abstract
---@param typeLib any
---@return System.Reflection.Assembly
function m:ResolveRef(typeLib) end

System.Runtime.InteropServices.ITypeLibImporterNotifySink = m
return m
