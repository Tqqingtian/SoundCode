---@class System.Runtime.InteropServices.STATSTG : System.ValueType
---@field public pwcsName string
---@field public type number
---@field public cbSize number
---@field public mtime System.Runtime.InteropServices.FILETIME
---@field public ctime System.Runtime.InteropServices.FILETIME
---@field public atime System.Runtime.InteropServices.FILETIME
---@field public grfMode number
---@field public grfLocksSupported number
---@field public clsid System.Guid
---@field public grfStateBits number
---@field public reserved number
local m = {}

System.Runtime.InteropServices.STATSTG = m
return m
