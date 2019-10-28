---@class ZlibHelper : System.Object
local m = {}

---@overload fun(OrgByte:string): @static
---@static
---@param OrgByte string
---@param CompressRate number
---@return string
function m.CompressBytes(OrgByte, CompressRate) end

---@static
---@param CompressedBytes string
---@return string
function m.DeCompressBytes(CompressedBytes) end

---@overload fun(SourceString:string): @static
---@static
---@param SourceString string
---@param CompressRate number
---@return string
function m.CompressString(SourceString, CompressRate) end

---@static
---@param SourceString string
---@return string
function m.DecompressString(SourceString) end

---@static
---@param zipData string
---@return string
function m.GetStringByGZIPData(zipData) end

ZlibHelper = m
return m
