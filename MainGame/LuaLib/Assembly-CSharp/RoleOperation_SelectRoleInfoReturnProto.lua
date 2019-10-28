---@class RoleOperation_SelectRoleInfoReturnProto : System.ValueType
---@field public IsSuccess boolean
---@field public MsgCode number
---@field public RoldId number
---@field public RoleNickName string
---@field public JobId number
---@field public Level number
---@field public TotalRechargeMoney number
---@field public Money number
---@field public Gold number
---@field public Exp number
---@field public MaxHP number
---@field public MaxMP number
---@field public CurrHP number
---@field public CurrMP number
---@field public Attack number
---@field public Defense number
---@field public Hit number
---@field public Dodge number
---@field public Cri number
---@field public Res number
---@field public Fighting number
---@field public LastInWorldMapId number
---@field public LastInWorldMapPos string
---@field public Equip_Weapon number
---@field public Equip_Pants number
---@field public Equip_Clothes number
---@field public Equip_Belt number
---@field public Equip_Cuff number
---@field public Equip_Necklace number
---@field public Equip_Shoe number
---@field public Equip_Ring number
---@field public Equip_WeaponTableId number
---@field public Equip_PantsTableId number
---@field public Equip_ClothesTableId number
---@field public Equip_BeltTableId number
---@field public Equip_CuffTableId number
---@field public Equip_NecklaceTableId number
---@field public Equip_ShoeTableId number
---@field public Equip_RingTableId number
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
---@return RoleOperation_SelectRoleInfoReturnProto
function m.GetProto(buffer, isChild) end

RoleOperation_SelectRoleInfoReturnProto = m
return m
