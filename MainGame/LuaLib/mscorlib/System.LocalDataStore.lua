---@class System.LocalDataStore : System.Object
local m = {}

---@param slot System.LocalDataStoreSlot
---@return any
function m:GetData(slot) end

---@param slot System.LocalDataStoreSlot
---@param data any
function m:SetData(slot, data) end

System.LocalDataStore = m
return m
