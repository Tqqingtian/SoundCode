---@class System.Runtime.InteropServices.ComTypes.EXCEPINFO : System.ValueType
---@field public wCode number
---@field public wReserved number
---@field public bstrSource string
---@field public bstrDescription string
---@field public bstrHelpFile string
---@field public dwHelpContext number
---@field public pvReserved System.IntPtr
---@field public pfnDeferredFillIn System.IntPtr
---@field public scode number
local m = {}

System.Runtime.InteropServices.ComTypes.EXCEPINFO = m
return m
