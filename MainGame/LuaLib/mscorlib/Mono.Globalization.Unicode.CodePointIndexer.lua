---@class Mono.Globalization.Unicode.CodePointIndexer : System.Object
---@field public TotalCount number
local m = {}

---@static
---@param source System.Array
---@param type System.Type
---@param indexer Mono.Globalization.Unicode.CodePointIndexer
---@return System.Array
function m.CompressArray(source, type, indexer) end

---@param cp number
---@return number
function m:ToIndex(cp) end

---@param i number
---@return number
function m:ToCodePoint(i) end

Mono.Globalization.Unicode.CodePointIndexer = m
return m
