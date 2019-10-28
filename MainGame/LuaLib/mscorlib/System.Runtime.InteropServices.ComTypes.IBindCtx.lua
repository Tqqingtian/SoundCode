---@class System.Runtime.InteropServices.ComTypes.IBindCtx : table
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
---@param pbindopts System.Runtime.InteropServices.ComTypes.BIND_OPTS
---@return System.Runtime.InteropServices.ComTypes.BIND_OPTS
function m:SetBindOptions(pbindopts) end

---@abstract
---@param pbindopts System.Runtime.InteropServices.ComTypes.BIND_OPTS
---@return System.Runtime.InteropServices.ComTypes.BIND_OPTS
function m:GetBindOptions(pbindopts) end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IRunningObjectTable
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
---@return System.Runtime.InteropServices.ComTypes.IEnumString
function m:EnumObjectParam() end

---@abstract
---@param pszKey string
---@return number
function m:RevokeObjectParam(pszKey) end

System.Runtime.InteropServices.ComTypes.IBindCtx = m
return m
