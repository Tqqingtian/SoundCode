---@class System.Runtime.InteropServices.MarshalAsAttribute : System.Attribute
---@field public MarshalCookie string
---@field public MarshalType string
---@field public MarshalTypeRef System.Type
---@field public SafeArrayUserDefinedSubType System.Type
---@field public ArraySubType System.Runtime.InteropServices.UnmanagedType
---@field public SafeArraySubType System.Runtime.InteropServices.VarEnum
---@field public SizeConst number
---@field public IidParameterIndex number
---@field public SizeParamIndex number
---@field public Value System.Runtime.InteropServices.UnmanagedType
local m = {}

System.Runtime.InteropServices.MarshalAsAttribute = m
return m
