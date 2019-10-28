---@class System.Runtime.InteropServices.UCOMIMoniker : table
local m = {}

---@abstract
---@return System.Guid
function m:GetClassID() end

---@abstract
---@return number
function m:IsDirty() end

---@abstract
---@param pStm System.Runtime.InteropServices.UCOMIStream
function m:Load(pStm) end

---@abstract
---@param pStm System.Runtime.InteropServices.UCOMIStream
---@param fClearDirty boolean
function m:Save(pStm, fClearDirty) end

---@abstract
---@return System.Int64
function m:GetSizeMax() end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@param riidResult System.Guid
---@return System.Guid, System.Object
function m:BindToObject(pbc, pmkToLeft, riidResult) end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@param riid System.Guid
---@return System.Guid, System.Object
function m:BindToStorage(pbc, pmkToLeft, riid) end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param dwReduceHowFar number
---@param ppmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@return System.Runtime.InteropServices.UCOMIMoniker, System.Runtime.InteropServices.UCOMIMoniker
function m:Reduce(pbc, dwReduceHowFar, ppmkToLeft) end

---@abstract
---@param pmkRight System.Runtime.InteropServices.UCOMIMoniker
---@param fOnlyIfNotGeneric boolean
---@return System.Runtime.InteropServices.UCOMIMoniker
function m:ComposeWith(pmkRight, fOnlyIfNotGeneric) end

---@abstract
---@param fForward boolean
---@return System.Runtime.InteropServices.UCOMIEnumMoniker
function m:Enum(fForward) end

---@abstract
---@param pmkOtherMoniker System.Runtime.InteropServices.UCOMIMoniker
function m:IsEqual(pmkOtherMoniker) end

---@abstract
---@return System.Int32
function m:Hash() end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@param pmkNewlyRunning System.Runtime.InteropServices.UCOMIMoniker
function m:IsRunning(pbc, pmkToLeft, pmkNewlyRunning) end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@return System.Runtime.InteropServices.FILETIME
function m:GetTimeOfLastChange(pbc, pmkToLeft) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIMoniker
function m:Inverse() end

---@abstract
---@param pmkOther System.Runtime.InteropServices.UCOMIMoniker
---@return System.Runtime.InteropServices.UCOMIMoniker
function m:CommonPrefixWith(pmkOther) end

---@abstract
---@param pmkOther System.Runtime.InteropServices.UCOMIMoniker
---@return System.Runtime.InteropServices.UCOMIMoniker
function m:RelativePathTo(pmkOther) end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@return System.String
function m:GetDisplayName(pbc, pmkToLeft) end

---@abstract
---@param pbc System.Runtime.InteropServices.UCOMIBindCtx
---@param pmkToLeft System.Runtime.InteropServices.UCOMIMoniker
---@param pszDisplayName string
---@return System.Int32, System.Runtime.InteropServices.UCOMIMoniker
function m:ParseDisplayName(pbc, pmkToLeft, pszDisplayName) end

---@abstract
---@return System.Int32
function m:IsSystemMoniker() end

System.Runtime.InteropServices.UCOMIMoniker = m
return m
