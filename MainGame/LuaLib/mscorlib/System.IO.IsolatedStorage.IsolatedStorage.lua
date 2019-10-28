---@class System.IO.IsolatedStorage.IsolatedStorage : System.MarshalByRefObject
---@field public ApplicationIdentity any
---@field public AssemblyIdentity any
---@field public CurrentSize number
---@field public DomainIdentity any
---@field public MaximumSize number
---@field public Scope System.IO.IsolatedStorage.IsolatedStorageScope
---@field public AvailableFreeSpace number
---@field public Quota number
---@field public UsedSize number
local m = {}

---@abstract
function m:Remove() end

---@virtual
---@param newQuotaSize number
---@return boolean
function m:IncreaseQuotaTo(newQuotaSize) end

System.IO.IsolatedStorage.IsolatedStorage = m
return m
