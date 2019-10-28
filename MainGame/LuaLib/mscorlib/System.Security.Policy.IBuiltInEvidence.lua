---@class System.Security.Policy.IBuiltInEvidence : table
local m = {}

---@abstract
---@param verbose boolean
---@return number
function m:GetRequiredSize(verbose) end

---@abstract
---@param buffer number[]
---@param position number
---@return number
function m:InitFromBuffer(buffer, position) end

---@abstract
---@param buffer number[]
---@param position number
---@param verbose boolean
---@return number
function m:OutputToBuffer(buffer, position, verbose) end

System.Security.Policy.IBuiltInEvidence = m
return m
