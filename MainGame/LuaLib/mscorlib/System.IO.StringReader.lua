---@class System.IO.StringReader : System.IO.TextReader
local m = {}

---@virtual
function m:Close() end

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
function m:ReadBlockAsync(buffer, index, count) end

---@virtual
---@param buffer number[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadAsync(buffer, index, count) end

System.IO.StringReader = m
return m
