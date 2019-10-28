---@class System.IO.StreamWriter : System.IO.TextWriter
---@field public Null System.IO.StreamWriter @static
---@field public AutoFlush boolean
---@field public BaseStream System.IO.Stream
---@field public Encoding System.Text.Encoding
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Flush() end

---@overload fun(buffer:number[]) @virtual
---@overload fun(buffer:number[], index:number, count:number) @virtual
---@overload fun(value:string) @virtual
---@virtual
---@param value number
function m:Write(value) end

---@overload fun(value:string): @virtual
---@overload fun(buffer:number[], index:number, count:number): @virtual
---@virtual
---@param value number
---@return System.Threading.Tasks.Task
function m:WriteAsync(value) end

---@overload fun(value:number): @virtual
---@overload fun(value:string): @virtual
---@overload fun(buffer:number[], index:number, count:number): @virtual
---@virtual
---@return System.Threading.Tasks.Task
function m:WriteLineAsync() end

---@virtual
---@return System.Threading.Tasks.Task
function m:FlushAsync() end

System.IO.StreamWriter = m
return m
