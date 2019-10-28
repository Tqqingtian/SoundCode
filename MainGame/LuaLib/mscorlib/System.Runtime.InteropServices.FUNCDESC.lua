---@class System.Runtime.InteropServices.FUNCDESC : System.ValueType
---@field public memid number
---@field public lprgscode System.IntPtr
---@field public lprgelemdescParam System.IntPtr
---@field public funckind System.Runtime.InteropServices.FUNCKIND
---@field public invkind System.Runtime.InteropServices.INVOKEKIND
---@field public callconv System.Runtime.InteropServices.CALLCONV
---@field public cParams number
---@field public cParamsOpt number
---@field public oVft number
---@field public cScodes number
---@field public elemdescFunc System.Runtime.InteropServices.ELEMDESC
---@field public wFuncFlags number
local m = {}

System.Runtime.InteropServices.FUNCDESC = m
return m
