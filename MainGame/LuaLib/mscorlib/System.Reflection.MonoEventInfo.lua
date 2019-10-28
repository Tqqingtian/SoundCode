---@class System.Reflection.MonoEventInfo : System.ValueType
---@field public declaring_type System.Type
---@field public reflected_type System.Type
---@field public name string
---@field public add_method System.Reflection.MethodInfo
---@field public remove_method System.Reflection.MethodInfo
---@field public raise_method System.Reflection.MethodInfo
---@field public attrs System.Reflection.EventAttributes
---@field public other_methods System.Reflection.MethodInfo[]
local m = {}

System.Reflection.MonoEventInfo = m
return m
