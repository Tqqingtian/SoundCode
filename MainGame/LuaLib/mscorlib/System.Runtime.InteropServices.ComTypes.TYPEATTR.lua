---@class System.Runtime.InteropServices.ComTypes.TYPEATTR : System.ValueType
---@field public MEMBER_ID_NIL number @static
---@field public guid System.Guid
---@field public lcid number
---@field public dwReserved number
---@field public memidConstructor number
---@field public memidDestructor number
---@field public lpstrSchema System.IntPtr
---@field public cbSizeInstance number
---@field public typekind System.Runtime.InteropServices.ComTypes.TYPEKIND
---@field public cFuncs number
---@field public cVars number
---@field public cImplTypes number
---@field public cbSizeVft number
---@field public cbAlignment number
---@field public wTypeFlags System.Runtime.InteropServices.ComTypes.TYPEFLAGS
---@field public wMajorVerNum number
---@field public wMinorVerNum number
---@field public tdescAlias System.Runtime.InteropServices.ComTypes.TYPEDESC
---@field public idldescType System.Runtime.InteropServices.ComTypes.IDLDESC
local m = {}

System.Runtime.InteropServices.ComTypes.TYPEATTR = m
return m
