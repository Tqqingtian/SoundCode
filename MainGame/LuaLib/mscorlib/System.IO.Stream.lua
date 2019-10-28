---@class System.IO.Stream : System.MarshalByRefObject
---@field public Null System.IO.Stream @static
---@field public CanRead boolean
---@field public CanSeek boolean
---@field public CanTimeout boolean
---@field public CanWrite boolean
---@field public Length number
---@field public Position number
---@field public ReadTimeout number
---@field public WriteTimeout number
local m = {}

---@overload fun(destination:System.IO.Stream, bufferSize:number):
---@overload fun(destination:System.IO.Stream, bufferSize:number, cancellationToken:System.Threading.CancellationToken): @virtual
---@param destination System.IO.Stream
---@return System.Threading.Tasks.Task
function m:CopyToAsync(destination) end

---@overload fun(destination:System.IO.Stream, bufferSize:number) @virtual
---@param destination System.IO.Stream
function m:CopyTo(destination) end

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@abstract
function m:Flush() end

---@overload fun(cancellationToken:System.Threading.CancellationToken): @virtual
---@return System.Threading.Tasks.Task
function m:FlushAsync() end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param callback fun(ar:System.IAsyncResult)
---@param state any
---@return System.IAsyncResult
function m:BeginRead(buffer, offset, count, callback, state) end

---@virtual
---@param asyncResult System.IAsyncResult
---@return number
function m:EndRead(asyncResult) end

---@overload fun(buffer:string, offset:number, count:number, cancellationToken:System.Threading.CancellationToken): @virtual
---@overload fun(destination:System.Memory_1_System_Byte_, cancellationToken:System.Threading.CancellationToken): @virtual
---@overload fun(destination:System.Memory_1_System_Byte_): @virtual
---@param buffer string
---@param offset number
---@param count number
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadAsync(buffer, offset, count) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param callback fun(ar:System.IAsyncResult)
---@param state any
---@return System.IAsyncResult
function m:BeginWrite(buffer, offset, count, callback, state) end

---@virtual
---@param asyncResult System.IAsyncResult
function m:EndWrite(asyncResult) end

---@overload fun(buffer:string, offset:number, count:number, cancellationToken:System.Threading.CancellationToken): @virtual
---@overload fun(source:System.ReadOnlyMemory_1_System_Byte_, cancellationToken:System.Threading.CancellationToken): @virtual
---@overload fun(source:System.ReadOnlyMemory_1_System_Byte_): @virtual
---@param buffer string
---@param offset number
---@param count number
---@return System.Threading.Tasks.Task
function m:WriteAsync(buffer, offset, count) end

---@abstract
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@abstract
---@param value number
function m:SetLength(value) end

---@overload fun(destination:System.Span_1_System_Byte_): @virtual
---@abstract
---@param offset number
---@param count number
---@return number
function m:Read(offset, count) end

---@virtual
---@return number
function m:ReadByte() end

---@overload fun(source:System.ReadOnlySpan_1_System_Byte_) @virtual
---@abstract
---@param buffer string
---@param offset number
---@param count number
function m:Write(buffer, offset, count) end

---@virtual
---@param value number
function m:WriteByte(value) end

---@static
---@param stream System.IO.Stream
---@return System.IO.Stream
function m.Synchronized(stream) end

System.IO.Stream = m
return m
