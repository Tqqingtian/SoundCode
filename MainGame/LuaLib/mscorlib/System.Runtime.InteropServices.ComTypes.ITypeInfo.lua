---@class System.Runtime.InteropServices.ComTypes.ITypeInfo : table
local m = {}

---@abstract
---@return System.IntPtr
function m:GetTypeAttr() end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.ITypeComp
function m:GetTypeComp() end

---@abstract
---@param index number
---@return System.IntPtr
function m:GetFuncDesc(index) end

---@abstract
---@param index number
---@return System.IntPtr
function m:GetVarDesc(index) end

---@abstract
---@param memid number
---@param cMaxNames number
---@return System.Int32
function m:GetNames(memid, cMaxNames) end

---@abstract
---@param index number
---@return System.Int32
function m:GetRefTypeOfImplType(index) end

---@abstract
---@param index number
---@return System.Runtime.InteropServices.ComTypes.IMPLTYPEFLAGS
function m:GetImplTypeFlags(index) end

---@abstract
---@param rgszNames string[]
---@param cNames number
function m:GetIDsOfNames(rgszNames, cNames) end

---@abstract
---@param pvInstance any
---@param memid number
---@param wFlags number
---@param pDispParams System.Runtime.InteropServices.ComTypes.DISPPARAMS
---@param pVarResult System.IntPtr
---@param pExcepInfo System.IntPtr
---@return System.Runtime.InteropServices.ComTypes.DISPPARAMS, System.Int32
function m:Invoke(pvInstance, memid, wFlags, pDispParams, pVarResult, pExcepInfo) end

---@abstract
---@param index number
---@return System.String, System.String, System.Int32, System.String
function m:GetDocumentation(index) end

---@abstract
---@param memid number
---@param invKind System.Runtime.InteropServices.ComTypes.INVOKEKIND
---@param pBstrDllName System.IntPtr
---@param pBstrName System.IntPtr
---@param pwOrdinal System.IntPtr
function m:GetDllEntry(memid, invKind, pBstrDllName, pBstrName, pwOrdinal) end

---@abstract
---@param hRef number
---@return System.Runtime.InteropServices.ComTypes.ITypeInfo
function m:GetRefTypeInfo(hRef) end

---@abstract
---@param memid number
---@param invKind System.Runtime.InteropServices.ComTypes.INVOKEKIND
---@return System.IntPtr
function m:AddressOfMember(memid, invKind) end

---@abstract
---@param pUnkOuter any
---@param riid System.Guid
---@return System.Guid, System.Object
function m:CreateInstance(pUnkOuter, riid) end

---@abstract
---@param memid number
---@return System.String
function m:GetMops(memid) end

---@abstract
---@return System.Runtime.InteropServices.ComTypes.ITypeLib, System.Int32
function m:GetContainingTypeLib() end

---@abstract
---@param pTypeAttr System.IntPtr
function m:ReleaseTypeAttr(pTypeAttr) end

---@abstract
---@param pFuncDesc System.IntPtr
function m:ReleaseFuncDesc(pFuncDesc) end

---@abstract
---@param pVarDesc System.IntPtr
function m:ReleaseVarDesc(pVarDesc) end

System.Runtime.InteropServices.ComTypes.ITypeInfo = m
return m
