---@class MMO_MemoryStream : System.IO.MemoryStream
local m = {}

---@return number
function m:ReadShort() end

---@param value number
function m:WriteShort(value) end

---@return number
function m:ReadUShort() end

---@param value number
function m:WriteUShort(value) end

---@return number
function m:ReadInt() end

---@param value number
function m:WriteInt(value) end

---@return number
function m:ReadUInt() end

---@param value number
function m:WriteUInt(value) end

---@return number
function m:ReadLong() end

---@param value number
function m:WriteLong(value) end

---@return number
function m:ReadULong() end

---@param value number
function m:WriteULong(value) end

---@return number
function m:ReadFloat() end

---@param value number
function m:WriteFloat(value) end

---@return number
function m:ReadDouble() end

---@param value number
function m:WriteDouble(value) end

---@return boolean
function m:ReadBool() end

---@param value boolean
function m:WriteBool(value) end

---@return string
function m:ReadUTF8String() end

---@param str string
function m:WriteUTF8String(str) end

MMO_MemoryStream = m
return m
