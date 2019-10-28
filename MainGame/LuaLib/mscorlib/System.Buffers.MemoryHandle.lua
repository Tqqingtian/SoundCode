---@class System.Buffers.MemoryHandle : System.ValueType
---@field public PinnedPointer System.Void*
local m = {}

---@virtual
function m:Dispose() end

System.Buffers.MemoryHandle = m
return m
