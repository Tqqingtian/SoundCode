---@class System.Buffers.OwnedMemory_1_T_ : System.Object
---@field public Length number
---@field public Span System.ValueType
---@field public Memory System.ValueType
---@field public IsDisposed boolean
local m = {}

---@abstract
---@return System.Buffers.MemoryHandle
function m:Pin() end

---@virtual
function m:Dispose() end

---@abstract
function m:Retain() end

---@abstract
---@return boolean
function m:Release() end

System.Buffers.OwnedMemory_1_T_ = m
return m
