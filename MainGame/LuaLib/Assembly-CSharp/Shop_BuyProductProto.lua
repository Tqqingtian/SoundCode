---@class Shop_BuyProductProto : System.ValueType
---@field public ProductId number
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
---@return Shop_BuyProductProto
function m.GetProto(buffer, isChild) end

Shop_BuyProductProto = m
return m
