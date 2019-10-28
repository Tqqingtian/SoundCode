---@class System.Security.Policy.ApplicationTrustCollection : System.Object
---@field public Count number
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Item System.Security.Policy.ApplicationTrust
---@field public Item System.Security.Policy.ApplicationTrust
local m = {}

---@param trust System.Security.Policy.ApplicationTrust
---@return number
function m:Add(trust) end

---@overload fun(trusts:System.Security.Policy.ApplicationTrustCollection)
---@param trusts System.Security.Policy.ApplicationTrust[]
function m:AddRange(trusts) end

function m:Clear() end

---@param array System.Security.Policy.ApplicationTrust[]
---@param index number
function m:CopyTo(array, index) end

---@param applicationIdentity System.ApplicationIdentity
---@param versionMatch System.Security.Policy.ApplicationVersionMatch
---@return System.Security.Policy.ApplicationTrustCollection
function m:Find(applicationIdentity, versionMatch) end

---@return System.Security.Policy.ApplicationTrustEnumerator
function m:GetEnumerator() end

---@overload fun(applicationIdentity:System.ApplicationIdentity, versionMatch:System.Security.Policy.ApplicationVersionMatch)
---@param trust System.Security.Policy.ApplicationTrust
function m:Remove(trust) end

---@overload fun(trusts:System.Security.Policy.ApplicationTrustCollection)
---@param trusts System.Security.Policy.ApplicationTrust[]
function m:RemoveRange(trusts) end

System.Security.Policy.ApplicationTrustCollection = m
return m
