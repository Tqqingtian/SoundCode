---@class System.LocalDataStoreMgr : System.Object
local m = {}

---@return System.LocalDataStoreHolder
function m:CreateLocalDataStore() end

---@param store System.LocalDataStore
function m:DeleteLocalDataStore(store) end

---@return System.LocalDataStoreSlot
function m:AllocateDataSlot() end

---@param name string
---@return System.LocalDataStoreSlot
function m:AllocateNamedDataSlot(name) end

---@param name string
---@return System.LocalDataStoreSlot
function m:GetNamedDataSlot(name) end

---@param name string
function m:FreeNamedDataSlot(name) end

---@param slot System.LocalDataStoreSlot
function m:ValidateSlot(slot) end

System.LocalDataStoreMgr = m
return m
