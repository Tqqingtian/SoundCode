---@class System.Runtime.InteropServices.ComTypes.ITypeInfo2 : table
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

---@abstract
---@return System.Runtime.InteropServices.ComTypes.TYPEKIND
function m:GetTypeKind() end

---@abstract
---@return System.Int32
function m:GetTypeFlags() end

---@abstract
---@param memid number
---@param invKind System.Runtime.InteropServices.ComTypes.INVOKEKIND
---@return System.Int32
function m:GetFuncIndexOfMemId(memid, invKind) end

---@abstract
---@param memid number
---@return System.Int32
function m:GetVarIndexOfMemId(memid) end

---@abstract
---@param guid System.Guid
---@return System.Guid, System.Object
function m:GetCustData(guid) end

---@abstract
---@param index number
---@param guid System.Guid
---@return System.Guid, System.Object
function m:GetFuncCustData(index, guid) end

---@abstract
---@param indexFunc number
---@param indexParam number
---@param guid System.Guid
---@return System.Guid, System.Object
function m:GetParamCustData(indexFunc, indexParam, guid) end

---@abstract
---@param index number
---@param guid System.Guid
---@return System.Guid, System.Object
function m:GetVarCustData(index, guid) end

---@abstract
---@param index number
---@param guid System.Guid
---@return System.Guid, System.Object
function m:GetImplTypeCustData(index, guid) end

---@abstract
---@param memid number
---@return System.String, System.Int32, System.String
function m:GetDocumentation2(memid) end

---@abstract
---@param pCustData System.IntPtr
function m:GetAllCustData(pCustData) end

---@abstract
---@param index number
---@param pCustData System.IntPtr
function m:GetAllFuncCustData(index, pCustData) end

---@abstract
---@param indexFunc number
---@param indexParam number
---@param pCustData System.IntPtr
function m:GetAllParamCustData(indexFunc, indexParam, pCustData) end

---@abstract
---@param index number
---@param pCustData System.IntPtr
function m:GetAllVarCustData(index, pCustData) end

---@abstract
---@param index number
---@param pCustData System.IntPtr
function m:GetAllImplTypeCustData(index, pCustData) end

System.Runtime.InteropServices.ComTypes.ITypeInfo2 = m
return m
