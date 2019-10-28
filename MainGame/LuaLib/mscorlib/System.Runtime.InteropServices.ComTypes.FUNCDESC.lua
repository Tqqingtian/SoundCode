---@class System.Runtime.InteropServices.ComTypes.FUNCDESC : System.ValueType
---@field public memid number
---@field public lprgscode System.IntPtr
---@field public lprgelemdescParam System.IntPtr
---@field public funckind System.Runtime.InteropServices.ComTypes.FUNCKIND
---@field public invkind System.Runtime.InteropServices.ComTypes.INVOKEKIND
---@field public callconv System.Runtime.InteropServices.ComTypes.CALLCONV
---@field public cParams number
---@field public cParamsOpt number
---@field public oVft number
---@field public cScodes number
---@field public elemdescFunc System.Runtime.InteropServices.ComTypes.ELEMDESC
---@field public wFuncFlags number
local m = {}

System.Runtime.InteropServices.ComTypes.FUNCDESC = m
return m
