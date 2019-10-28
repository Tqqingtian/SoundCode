---@class System.Security.Permissions.KeyContainerPermissionAccessEntryCollection : System.Object
---@field public Count number
---@field public IsSynchronized boolean
---@field public Item System.Security.Permissions.KeyContainerPermissionAccessEntry
---@field public SyncRoot any
local m = {}

---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return number
function m:Add(accessEntry) end

function m:Clear() end

---@param array System.Security.Permissions.KeyContainerPermissionAccessEntry[]
---@param index number
function m:CopyTo(array, index) end

---@return System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
function m:GetEnumerator() end

---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return number
function m:IndexOf(accessEntry) end

---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
function m:Remove(accessEntry) end

System.Security.Permissions.KeyContainerPermissionAccessEntryCollection = m
return m
