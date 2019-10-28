---@class System.Runtime.InteropServices.RuntimeInformation : System.Object
---@field public FrameworkDescription string @static
---@field public OSDescription string @static
---@field public OSArchitecture System.Runtime.InteropServices.Architecture @static
---@field public ProcessArchitecture System.Runtime.InteropServices.Architecture @static
local m = {}

---@static
---@param osPlatform System.Runtime.InteropServices.OSPlatform
---@return boolean
function m.IsOSPlatform(osPlatform) end

System.Runtime.InteropServices.RuntimeInformation = m
return m
