---@class System.IO.StringWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding
local m = {}

---@virtual
function m:Close() end

---@virtual
---@return System.Text.StringBuilder
function m:GetStringBuilder() end

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

---@overload fun(value:string): @virtual
---@overload fun(buffer:number[], index:number, count:number): @virtual
---@virtual
---@param value number
---@return System.Threading.Tasks.Task
function m:WriteLineAsync(value) end

---@virtual
---@return System.Threading.Tasks.Task
function m:FlushAsync() end

---@virtual
---@return string
function m:ToString() end

System.IO.StringWriter = m
return m
