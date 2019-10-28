---@class System.Runtime.InteropServices.TYPEATTR : System.ValueType
---@field public MEMBER_ID_NIL number @static
---@field public guid System.Guid
---@field public lcid number
---@field public dwReserved number
---@field public memidConstructor number
---@field public memidDestructor number
---@field public lpstrSchema System.IntPtr
---@field public cbSizeInstance number
---@field public typekind System.Runtime.InteropServices.TYPEKIND
---@field public cFuncs number
---@field public cVars number
---@field public cImplTypes number
---@field public cbSizeVft number
---@field public cbAlignment number
---@field public wTypeFlags System.Runtime.InteropServices.TYPEFLAGS
---@field public wMajorVerNum number
---@field public wMinorVerNum number
---@field public tdescAlias System.Runtime.InteropServices.TYPEDESC
---@field public idldescType System.Runtime.InteropServices.IDLDESC
local m = {}

System.Runtime.InteropServices.TYPEATTR = m
return m
