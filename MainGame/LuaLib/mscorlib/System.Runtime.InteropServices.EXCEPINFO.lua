---@class System.Runtime.InteropServices.EXCEPINFO : System.ValueType
---@field public wCode number
---@field public wReserved number
---@field public bstrSource string
---@field public bstrDescription string
---@field public bstrHelpFile string
---@field public dwHelpContext number
---@field public pvReserved System.IntPtr
---@field public pfnDeferredFillIn System.IntPtr
local m = {}

System.Runtime.InteropServices.EXCEPINFO = m
return m
