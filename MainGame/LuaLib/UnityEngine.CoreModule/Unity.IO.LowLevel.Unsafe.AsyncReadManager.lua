---@class Unity.IO.LowLevel.Unsafe.AsyncReadManager : System.Object
local m = {}

---@static
---@param filename string
---@param readCmds Unity.IO.LowLevel.Unsafe.ReadCommand*
---@param readCmdCount number
---@return Unity.IO.LowLevel.Unsafe.ReadHandle
function m.Read(filename, readCmds, readCmdCount) end

Unity.IO.LowLevel.Unsafe.AsyncReadManager = m
return m
