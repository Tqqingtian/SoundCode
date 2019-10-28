---@class System.Runtime.InteropServices.ComTypes.ITypeLib : table
local m = {}

---@abstract
---@return number
function m:GetTypeInfoCount() end

---@abstract
---@param index number
---@return System.Runtime.InteropServices.ComTypes.ITypeInfo
function m:GetTypeInfo(index) end

---@abstract
---@param index number
---@return System.Runtime.InteropServices.ComTypes.TYPEKIND
function m:GetTypeInfoType(index) end

---@abstract
---@param guid System.Guid
---@return System.Guid, System.Runtime.InteropServices.ComTypes.ITypeInfo
function m:GetTypeInfoOfGuid(guid) end

---@abstract
---@return System.IntPtr
function m:GetLibAttr() end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.ITypeComp
function m:GetTypeComp() end

---@abstract
---@param index number
---@return System.String, System.String, System.Int32, System.String
function m:GetDocumentation(index) end

---@abstract
---@param szNameBuf string
---@param lHashVal number
---@return boolean
function m:IsName(szNameBuf, lHashVal) end

---@abstract
---@param szNameBuf string
---@param lHashVal number
---@param pcFound System.Int16
---@return System.Int16
function m:FindName(szNameBuf, lHashVal, pcFound) end

---@abstract
---@param pTLibAttr System.IntPtr
function m:ReleaseTLibAttr(pTLibAttr) end

System.Runtime.InteropServices.ComTypes.ITypeLib = m
return m
