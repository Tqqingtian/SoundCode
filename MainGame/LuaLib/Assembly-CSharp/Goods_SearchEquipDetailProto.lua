---@class Goods_SearchEquipDetailProto : System.ValueType
---@field public GoodsServerId number
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
---@return Goods_SearchEquipDetailProto
function m.GetProto(buffer, isChild) end

Goods_SearchEquipDetailProto = m
return m
