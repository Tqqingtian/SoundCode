---@class Mono.Globalization.Unicode.SortKeyBuffer : System.Object
local m = {}

function m:Reset() end

---@return System.Globalization.SortKey
function m:GetResultAndReset() end

---@return System.Globalization.SortKey
function m:GetResult() end

Mono.Globalization.Unicode.SortKeyBuffer = m
return m
