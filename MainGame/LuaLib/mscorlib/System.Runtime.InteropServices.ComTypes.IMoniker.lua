---@class System.Runtime.InteropServices.ComTypes.IMoniker : table
local m = {}

---@abstract
---@return System.Guid
function m:GetClassID() end

---@abstract
---@return number
function m:IsDirty() end

---@abstract
---@param pStm System.Runtime.InteropServices.ComTypes.IStream
function m:Load(pStm) end

---@abstract
---@param pStm System.Runtime.InteropServices.ComTypes.IStream
---@param fClearDirty boolean
function m:Save(pStm, fClearDirty) end

---@abstract
---@return System.Int64
function m:GetSizeMax() end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@param riidResult System.Guid
---@return System.Guid, System.Object
function m:BindToObject(pbc, pmkToLeft, riidResult) end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@param riid System.Guid
---@return System.Guid, System.Object
function m:BindToStorage(pbc, pmkToLeft, riid) end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param dwReduceHowFar number
---@param ppmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@return System.Runtime.InteropServices.ComTypes.IMoniker, System.Runtime.InteropServices.ComTypes.IMoniker
function m:Reduce(pbc, dwReduceHowFar, ppmkToLeft) end

---@abstract
---@param pmkRight System.Runtime.InteropServices.ComTypes.IMoniker
---@param fOnlyIfNotGeneric boolean
---@return System.Runtime.InteropServices.ComTypes.IMoniker
function m:ComposeWith(pmkRight, fOnlyIfNotGeneric) end

---@abstract
---@param fForward boolean
---@return System.Runtime.InteropServices.ComTypes.IEnumMoniker
function m:Enum(fForward) end

---@abstract
---@param pmkOtherMoniker System.Runtime.InteropServices.ComTypes.IMoniker
---@return number
function m:IsEqual(pmkOtherMoniker) end

---@abstract
---@return System.Int32
function m:Hash() end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@param pmkNewlyRunning System.Runtime.InteropServices.ComTypes.IMoniker
---@return number
function m:IsRunning(pbc, pmkToLeft, pmkNewlyRunning) end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@return System.Runtime.InteropServices.ComTypes.FILETIME
function m:GetTimeOfLastChange(pbc, pmkToLeft) end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IMoniker
function m:Inverse() end

---@abstract
---@param pmkOther System.Runtime.InteropServices.ComTypes.IMoniker
---@return System.Runtime.InteropServices.ComTypes.IMoniker
function m:CommonPrefixWith(pmkOther) end

---@abstract
---@param pmkOther System.Runtime.InteropServices.ComTypes.IMoniker
---@return System.Runtime.InteropServices.ComTypes.IMoniker
function m:RelativePathTo(pmkOther) end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@return System.String
function m:GetDisplayName(pbc, pmkToLeft) end

---@abstract
---@param pbc System.Runtime.InteropServices.ComTypes.IBindCtx
---@param pmkToLeft System.Runtime.InteropServices.ComTypes.IMoniker
---@param pszDisplayName string
---@return System.Int32, System.Runtime.InteropServices.ComTypes.IMoniker
function m:ParseDisplayName(pbc, pmkToLeft, pszDisplayName) end

---@abstract
---@return number, System.Int32
function m:IsSystemMoniker() end

System.Runtime.InteropServices.ComTypes.IMoniker = m
return m
