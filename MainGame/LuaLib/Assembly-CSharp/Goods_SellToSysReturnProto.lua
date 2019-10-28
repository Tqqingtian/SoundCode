---@class Goods_SellToSysReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@overload fun(): @virtual
---@virtual
---@param isChild boolean
---@return string
function m:ToArray(isChild) end

---@overload fun(buffer:string): @static
---@static
---@param buffer string
---@param isChild boolean
---@return Goods_SellToSysReturnProto
function m.GetProto(buffer, isChild) end

Goods_SellToSysReturnProto = m
return m
