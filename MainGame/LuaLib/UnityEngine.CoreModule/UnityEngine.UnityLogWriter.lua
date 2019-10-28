---@class UnityEngine.UnityLogWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding
local m = {}

---@static
---@param s string
function m.WriteStringToUnityLog(s) end

---@static
function m.Init() end

---@overload fun(s:string) @virtual
---@overload fun(buffer:number[], index:number, count:number) @virtual
---@virtual
---@param value number
function m:Write(value) end

UnityEngine.UnityLogWriter = m
return m
