---@class System.Runtime.InteropServices.Expando.IExpando : table
local m = {}

---@abstract
---@param name string
---@return System.Reflection.FieldInfo
function m:AddField(name) end

---@abstract
---@param name string
---@return System.Reflection.PropertyInfo
function m:AddProperty(name) end

---@abstract
---@param name string
---@param method fun(...:any|any[]):
---@return System.Reflection.MethodInfo
function m:AddMethod(name, method) end

---@abstract
---@param m System.Reflection.MemberInfo
function m:RemoveMember(m) end

System.Runtime.InteropServices.Expando.IExpando = m
return m
