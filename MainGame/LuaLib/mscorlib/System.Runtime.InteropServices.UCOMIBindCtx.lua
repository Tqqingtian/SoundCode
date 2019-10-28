---@class System.Runtime.InteropServices.UCOMIBindCtx : table
local m = {}

---@abstract
---@param punk any
function m:RegisterObjectBound(punk) end

---@abstract
---@param punk any
function m:RevokeObjectBound(punk) end

---@abstract
function m:ReleaseBoundObjects() end

---@abstract
---@param pbindopts System.Runtime.InteropServices.BIND_OPTS
---@return System.Runtime.InteropServices.BIND_OPTS
function m:SetBindOptions(pbindopts) end

---@abstract
---@param pbindopts System.Runtime.InteropServices.BIND_OPTS
---@return System.Runtime.InteropServices.BIND_OPTS
function m:GetBindOptions(pbindopts) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIRunningObjectTable
function m:GetRunningObjectTable() end

---@abstract
---@param pszKey string
---@param punk any
function m:RegisterObjectParam(pszKey, punk) end

---@abstract
---@param pszKey string
---@return System.Object
function m:GetObjectParam(pszKey) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumString
function m:EnumObjectParam() end

---@abstract
---@param pszKey string
function m:RevokeObjectParam(pszKey) end

System.Runtime.InteropServices.UCOMIBindCtx = m
return m
