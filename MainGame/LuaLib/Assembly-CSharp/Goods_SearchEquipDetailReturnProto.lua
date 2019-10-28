---@class Goods_SearchEquipDetailReturnProto : System.ValueType
---@field public EnchantLevel number
---@field public BaseAttr1Type number
---@field public BaseAttr1Value number
---@field public BaseAttr2Type number
---@field public BaseAttr2Value number
---@field public HP number
---@field public MP number
---@field public Attack number
---@field public Defense number
---@field public Hit number
---@field public Dodge number
---@field public Cri number
---@field public Res number
---@field public IsPutOn number
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
---@return Goods_SearchEquipDetailReturnProto
function m.GetProto(buffer, isChild) end

Goods_SearchEquipDetailReturnProto = m
return m
