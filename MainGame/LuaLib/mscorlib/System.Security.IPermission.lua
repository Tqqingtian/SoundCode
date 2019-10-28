---@class System.Security.IPermission : table
local m = {}

---@abstract
---@return System.Security.IPermission
function m:Copy() end

---@abstract
function m:Demand() end

---@abstract
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@abstract
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@abstract
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

System.Security.IPermission = m
return m
