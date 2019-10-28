---@class System.Runtime.DesignerServices.WindowsRuntimeDesignerContext : System.Object
---@field public Name string
local m = {}

---@param assemblyName string
---@return System.Reflection.Assembly
function m:GetAssembly(assemblyName) end

---@param typeName string
---@return System.Type
function m:GetType(typeName) end

---@static
---@param paths System.Collections.Generic.IEnumerable_1_System_String_
function m.InitializeSharedContext(paths) end

---@static
---@param context System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
function m.SetIterationContext(context) end

System.Runtime.DesignerServices.WindowsRuntimeDesignerContext = m
return m
