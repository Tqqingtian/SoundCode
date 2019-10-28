---@class Mono.Globalization.Unicode.NormalizationTableUtil : System.Object
---@field public Prop Mono.Globalization.Unicode.CodePointIndexer @static
---@field public Map Mono.Globalization.Unicode.CodePointIndexer @static
---@field public Combining Mono.Globalization.Unicode.CodePointIndexer @static
---@field public Composite Mono.Globalization.Unicode.CodePointIndexer @static
---@field public Helper Mono.Globalization.Unicode.CodePointIndexer @static
---@field public PropCount number @static
---@field public MapCount number @static
local m = {}

---@static
---@param cp number
---@return number
function m.PropIdx(cp) end

---@static
---@param index number
---@return number
function m.PropCP(index) end

---@static
---@param cp number
---@return number
function m.MapIdx(cp) end

---@static
---@param index number
---@return number
function m.MapCP(index) end

---@static
---@param cp number
---@return number
function m.CbIdx(cp) end

---@static
---@param index number
---@return number
function m.CbCP(index) end

Mono.Globalization.Unicode.NormalizationTableUtil = m
return m
