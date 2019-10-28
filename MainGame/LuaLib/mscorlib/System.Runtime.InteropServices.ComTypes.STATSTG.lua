---@class System.Runtime.InteropServices.ComTypes.STATSTG : System.ValueType
---@field public pwcsName string
---@field public type number
---@field public cbSize number
---@field public mtime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public ctime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public atime System.Runtime.InteropServices.ComTypes.FILETIME
---@field public grfMode number
---@field public grfLocksSupported number
---@field public clsid System.Guid
---@field public grfStateBits number
---@field public reserved number
local m = {}

System.Runtime.InteropServices.ComTypes.STATSTG = m
return m
