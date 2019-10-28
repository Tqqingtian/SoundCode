---@class System.Threading.CompressedStack : System.Object
local m = {}

---@return System.Threading.CompressedStack
function m:CreateCopy() end

---@static
---@return System.Threading.CompressedStack
function m.Capture() end

---@static
---@return System.Threading.CompressedStack
function m.GetCompressedStack() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@static
---@param compressedStack System.Threading.CompressedStack
---@param callback fun(state:any)
---@param state any
function m.Run(compressedStack, callback, state) end

System.Threading.CompressedStack = m
return m
