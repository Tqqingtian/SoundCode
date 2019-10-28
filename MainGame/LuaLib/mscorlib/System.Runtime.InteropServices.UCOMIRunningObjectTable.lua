---@class System.Runtime.InteropServices.UCOMIRunningObjectTable : table
local m = {}

---@abstract
---@param grfFlags number
---@param punkObject any
---@param pmkObjectName System.Runtime.InteropServices.UCOMIMoniker
---@return System.Int32
function m:Register(grfFlags, punkObject, pmkObjectName) end

---@abstract
---@param dwRegister number
function m:Revoke(dwRegister) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.UCOMIMoniker
function m:IsRunning(pmkObjectName) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.UCOMIMoniker
---@return System.Object
function m:GetObject(pmkObjectName) end

---@abstract
---@param dwRegister number
---@param pfiletime System.Runtime.InteropServices.FILETIME
---@return System.Runtime.InteropServices.FILETIME
function m:NoteChangeTime(dwRegister, pfiletime) end

---@abstract
---@param pmkObjectName System.Runtime.InteropServices.UCOMIMoniker
---@return System.Runtime.InteropServices.FILETIME
function m:GetTimeOfLastChange(pmkObjectName) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumMoniker
function m:EnumRunning() end

System.Runtime.InteropServices.UCOMIRunningObjectTable = m
return m
