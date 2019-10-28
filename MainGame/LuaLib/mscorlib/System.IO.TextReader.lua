---@class System.IO.TextReader : System.MarshalByRefObject
---@field public Null System.IO.TextReader @static
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
---@return number
function m:Peek() end

---@overload fun(index:number, count:number): @virtual
---@virtual
---@return number
function m:Read() end

---@virtual
---@return string
function m:ReadToEnd() end

---@virtual
---@param index number
---@param count number
---@return number
function m:ReadBlock(index, count) end

---@virtual
---@return string
function m:ReadLine() end

---@virtual
---@return System.Threading.Tasks.Task_1_System_String_
function m:ReadLineAsync() end

---@virtual
---@return System.Threading.Tasks.Task_1_System_String_
function m:ReadToEndAsync() end

---@virtual
---@param buffer number[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadAsync(buffer, index, count) end

---@virtual
---@param buffer number[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadBlockAsync(buffer, index, count) end

---@static
---@param reader System.IO.TextReader
---@return System.IO.TextReader
function m.Synchronized(reader) end

System.IO.TextReader = m
return m
