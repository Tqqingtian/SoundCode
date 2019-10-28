---@class System.Reflection.Emit.SequencePointList : System.Object
---@field public Document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@field public StartLine number
---@field public EndLine number
---@field public StartColumn number
---@field public EndColumn number
local m = {}

---@return number[]
function m:GetOffsets() end

---@return number[]
function m:GetLines() end

---@return number[]
function m:GetColumns() end

---@return number[]
function m:GetEndLines() end

---@return number[]
function m:GetEndColumns() end

---@param offset number
---@param line number
---@param col number
---@param endLine number
---@param endCol number
function m:AddSequencePoint(offset, line, col, endLine, endCol) end

System.Reflection.Emit.SequencePointList = m
return m
