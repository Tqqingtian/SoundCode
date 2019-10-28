---@class Goods_SellToSysProto : System.ValueType
---@field public roleBackpackId number
---@field public GoodsType number
---@field public GoodsId number
---@field public GoodsServerId number
---@field public SellCount number
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
---@return Goods_SellToSysProto
function m.GetProto(buffer, isChild) end

Goods_SellToSysProto = m
return m
