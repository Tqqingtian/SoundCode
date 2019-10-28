---@class Goods_UseItemReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public GoodsId number
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
---@return Goods_UseItemReturnProto
function m.GetProto(buffer, isChild) end

Goods_UseItemReturnProto = m
return m
