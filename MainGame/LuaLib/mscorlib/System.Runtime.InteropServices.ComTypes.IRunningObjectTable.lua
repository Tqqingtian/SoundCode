---@class System.Runtime.InteropServices.ComTypes.IRunningObjectTable : table
local m = {}

---@abstract
---@param grfFlags number
---@param punkObject any
---@param pmkObjectName System.Runtime.InteropServices.ComTypes.IMoniker
---@return number
function m:Register(grfFlags, punkObject, pmkObjectName) end

---@abstract
---@param dwRegister number
function m:Revoke(dwRegister) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.ComTypes.IMoniker
---@return number
function m:IsRunning(pmkObjectName) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.ComTypes.IMoniker
---@return number, System.Object
function m:GetObject(pmkObjectName) end

---@abstract
---@param dwRegister number
---@param pfiletime System.Runtime.InteropServices.ComTypes.FILETIME
---@return System.Runtime.InteropServices.ComTypes.FILETIME
function m:NoteChangeTime(dwRegister, pfiletime) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.ComTypes.IMoniker
---@return number, System.Runtime.InteropServices.ComTypes.FILETIME
function m:GetTimeOfLastChange(pmkObjectName) end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IEnumMoniker
function m:EnumRunning() end

System.Runtime.InteropServices.ComTypes.IRunningObjectTable = m
return m
