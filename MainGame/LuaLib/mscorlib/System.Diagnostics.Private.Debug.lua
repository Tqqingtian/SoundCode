---@class System.Diagnostics.Private.Debug : System.Object
---@field public AutoFlush boolean @static
---@field public IndentLevel number @static
---@field public IndentSize number @static
local m = {}

---@static
function m.Close() end

---@static
function m.Flush() end

---@static
function m.Indent() end

---@static
function m.Unindent() end

---@overload fun(format:string, ...:any|any[]) @static
---@overload fun(format:string) @static
---@static
---@param message string
function m.Print(message) end

---@overload fun(condition:boolean, message:string) @static
---@overload fun(condition:boolean, message:string, detailMessage:string) @static
---@overload fun(condition:boolean, message:string, detailMessageFormat:string, ...:any|any[]) @static
---@overload fun(condition:boolean, message:string, detailMessageFormat:string) @static
---@static
---@param condition boolean
function m.Assert(condition) end

---@overload fun(message:string, detailMessage:string) @static
---@static
---@param message string
function m.Fail(message) end

---@overload fun(value:any) @static
---@overload fun(value:any, category:string) @static
---@overload fun(format:string, ...:any|any[]) @static
---@overload fun(format:string) @static
---@overload fun(message:string, category:string) @static
---@static
---@param message string
function m.WriteLine(message) end

---@overload fun(value:any) @static
---@overload fun(message:string, category:string) @static
---@overload fun(value:any, category:string) @static
---@static
---@param message string
function m.Write(message) end

---@overload fun(condition:boolean, value:any) @static
---@overload fun(condition:boolean, message:string, category:string) @static
---@overload fun(condition:boolean, value:any, category:string) @static
---@static
---@param condition boolean
---@param message string
function m.WriteIf(condition, message) end

---@overload fun(condition:boolean, value:any, category:string) @static
---@overload fun(condition:boolean, message:string) @static
---@overload fun(condition:boolean, message:string, category:string) @static
---@static
---@param condition boolean
---@param value any
function m.WriteLineIf(condition, value) end

System.Diagnostics.Private.Debug = m
return m
