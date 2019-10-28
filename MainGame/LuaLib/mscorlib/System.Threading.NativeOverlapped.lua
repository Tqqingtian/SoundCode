---@class System.Threading.NativeOverlapped : System.ValueType
---@field public InternalLow System.IntPtr
---@field public InternalHigh System.IntPtr
---@field public OffsetLow number
---@field public OffsetHigh number
---@field public EventHandle System.IntPtr
local m = {}

System.Threading.NativeOverlapped = m
return m
