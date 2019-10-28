---@class Mono.Globalization.Unicode.SimpleCollator.Context : System.ValueType
---@field public Option System.Globalization.CompareOptions
---@field public NeverMatchFlags System.Byte*
---@field public AlwaysMatchFlags System.Byte*
---@field public Buffer1 System.Byte*
---@field public Buffer2 System.Byte*
---@field public PrevCode number
---@field public PrevSortKey System.Byte*
local m = {}

function m:ClearPrevInfo() end

Mono.Globalization.Unicode.SimpleCollator.Context = m
return m
