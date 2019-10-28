---@class System.Runtime.InteropServices.ComTypes.IPersistFile : table
local m = {}

---@abstract
---@return System.Guid
function m:GetClassID() end

---@abstract
---@return number
function m:IsDirty() end

---@abstract
---@param pszFileName string
---@param dwMode number
function m:Load(pszFileName, dwMode) end

---@abstract
---@param pszFileName string
---@param fRemember boolean
function m:Save(pszFileName, fRemember) end

---@abstract
---@param pszFileName string
function m:SaveCompleted(pszFileName) end

---@abstract
---@return System.String
function m:GetCurFile() end

System.Runtime.InteropServices.ComTypes.IPersistFile = m
return m
