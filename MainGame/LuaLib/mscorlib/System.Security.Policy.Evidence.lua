---@class System.Security.Policy.Evidence : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsSynchronized boolean
---@field public Locked boolean
---@field public SyncRoot any
local m = {}

---@param id any
function m:AddAssembly(id) end

---@param id any
function m:AddHost(id) end

function m:Clear() end

---@return System.Security.Policy.Evidence
function m:Clone() end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@return System.Collections.IEnumerator
function m:GetAssemblyEnumerator() end

---@return System.Collections.IEnumerator
function m:GetHostEnumerator() end

---@param evidence System.Security.Policy.Evidence
function m:Merge(evidence) end

---@param t System.Type
function m:RemoveType(t) end

---@param evidence any
function m:AddAssemblyEvidence(evidence) end

---@param evidence any
function m:AddHostEvidence(evidence) end

---@return any
function m:GetAssemblyEvidence() end

---@return any
function m:GetHostEvidence() end

System.Security.Policy.Evidence = m
return m
