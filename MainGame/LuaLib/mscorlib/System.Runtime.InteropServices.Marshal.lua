---@class System.Runtime.InteropServices.Marshal : System.Object
---@field public SystemMaxDBCSCharSize number @static
---@field public SystemDefaultCharSize number @static
local m = {}

---@static
---@param pUnk System.IntPtr
---@return number
function m.AddRef(pUnk) end

---@static
---@return boolean
function m.AreComObjectsAvailableForCleanup() end

---@static
function m.CleanupUnusedObjectsInCurrentContext() end

---@static
---@param cb number
---@return System.IntPtr
function m.AllocCoTaskMem(cb) end

---@overload fun(cb:number): @static
---@static
---@param cb System.IntPtr
---@return System.IntPtr
function m.AllocHGlobal(cb) end

---@static
---@param monikerName string
---@return any
function m.BindToMoniker(monikerName) end

---@static
---@param otp any
---@param fIsWeak boolean
function m.ChangeWrapperHandleStrength(otp, fIsWeak) end

---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:number[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:System.IntPtr[], startIndex:number, destination:System.IntPtr, length:number) @static
---@overload fun(source:System.IntPtr, destination:string, startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:number[], startIndex:number, length:number) @static
---@overload fun(source:System.IntPtr, destination:System.IntPtr[], startIndex:number, length:number) @static
---@static
---@param source string
---@param startIndex number
---@param destination System.IntPtr
---@param length number
function m.Copy(source, startIndex, destination, length) end

---@overload fun(pOuter:System.IntPtr, o:any): @static
---@static
---@param pOuter System.IntPtr
---@param o any
---@return System.IntPtr
function m.CreateAggregatedObject(pOuter, o) end

---@overload fun(o:any): @static
---@static
---@param o any
---@param t System.Type
---@return any
function m.CreateWrapperOfType(o, t) end

---@overload fun(ptr:System.IntPtr) @static
---@static
---@param ptr System.IntPtr
---@param structuretype System.Type
function m.DestroyStructure(ptr, structuretype) end

---@static
---@param ptr System.IntPtr
function m.FreeBSTR(ptr) end

---@static
---@param ptr System.IntPtr
function m.FreeCoTaskMem(ptr) end

---@static
---@param hglobal System.IntPtr
function m.FreeHGlobal(hglobal) end

---@static
---@param s System.IntPtr
function m.ZeroFreeBSTR(s) end

---@static
---@param s System.IntPtr
function m.ZeroFreeCoTaskMemAnsi(s) end

---@static
---@param s System.IntPtr
function m.ZeroFreeCoTaskMemUnicode(s) end

---@static
---@param s System.IntPtr
function m.ZeroFreeCoTaskMemUTF8(s) end

---@static
---@param s System.IntPtr
function m.ZeroFreeGlobalAllocAnsi(s) end

---@static
---@param s System.IntPtr
function m.ZeroFreeGlobalAllocUnicode(s) end

---@static
---@param type System.Type
---@return System.Guid
function m.GenerateGuidForType(type) end

---@static
---@param type System.Type
---@return string
function m.GenerateProgIdForType(type) end

---@static
---@param progID string
---@return any
function m.GetActiveObject(progID) end

---@overload fun(o:any, T:System.Type, mode:System.Runtime.InteropServices.CustomQueryInterfaceMode): @static
---@overload fun(o:any): @static
---@static
---@param o any
---@param T System.Type
---@return System.IntPtr
function m.GetComInterfaceForObject(o, T) end

---@static
---@param o any
---@param t System.Type
---@return System.IntPtr
function m.GetComInterfaceForObjectInContext(o, t) end

---@static
---@param obj any
---@param key any
---@return any
function m.GetComObjectData(obj, key) end

---@static
---@param m System.Reflection.MemberInfo
---@return number
function m.GetComSlotForMethodInfo(m) end

---@static
---@param t System.Type
---@return number
function m.GetEndComSlot(t) end

---@static
---@return System.IntPtr
function m.GetExceptionPointers() end

---@static
---@param m System.Reflection.Module
---@return System.IntPtr
function m.GetHINSTANCE(m) end

---@static
---@return number
function m.GetExceptionCode() end

---@static
---@param e System.Exception
---@return number
function m.GetHRForException(e) end

---@static
---@return number
function m.GetHRForLastWin32Error() end

---@static
---@param o any
---@return System.IntPtr
function m.GetIDispatchForObject(o) end

---@static
---@param o any
---@return System.IntPtr
function m.GetIDispatchForObjectInContext(o) end

---@static
---@param t System.Type
---@return System.IntPtr
function m.GetITypeInfoForType(t) end

---@static
---@param o any
---@return System.IntPtr
function m.GetIUnknownForObjectInContext(o) end

---@static
---@param pfnMethodToWrap System.IntPtr
---@param pbSignature System.IntPtr
---@param cbSignature number
---@return System.IntPtr
function m.GetManagedThunkForUnmanagedMethodPtr(pfnMethodToWrap, pbSignature, cbSignature) end

---@static
---@param t System.Type
---@param slot number
---@param memberType System.Runtime.InteropServices.ComMemberType
---@return System.Reflection.MemberInfo, System.Runtime.InteropServices.ComMemberType
function m.GetMethodInfoForComSlot(t, slot, memberType) end

---@static
---@param o any
---@return System.IntPtr
function m.GetIUnknownForObject(o) end

---@overload fun(obj:any, pDstNativeVariant:System.IntPtr) @static
---@static
---@param obj any
---@param pDstNativeVariant System.IntPtr
function m.GetNativeVariantForObject(obj, pDstNativeVariant) end

---@static
---@param pUnk System.IntPtr
---@return any
function m.GetObjectForIUnknown(pUnk) end

---@overload fun(pSrcNativeVariant:System.IntPtr): @static
---@static
---@param pSrcNativeVariant System.IntPtr
---@return any
function m.GetObjectForNativeVariant(pSrcNativeVariant) end

---@overload fun(aSrcNativeVariant:System.IntPtr, cVars:number): @static
---@static
---@param aSrcNativeVariant System.IntPtr
---@param cVars number
---@return any[]
function m.GetObjectsForNativeVariants(aSrcNativeVariant, cVars) end

---@static
---@param t System.Type
---@return number
function m.GetStartComSlot(t) end

---@static
---@param cookie number
---@return System.Threading.Thread
function m.GetThreadFromFiberCookie(cookie) end

---@static
---@param pUnk System.IntPtr
---@param t System.Type
---@return any
function m.GetTypedObjectForIUnknown(pUnk, t) end

---@static
---@param piTypeInfo System.IntPtr
---@return System.Type
function m.GetTypeForITypeInfo(piTypeInfo) end

---@overload fun(typeInfo:System.Runtime.InteropServices.ComTypes.ITypeInfo): @static
---@static
---@param pTI System.Runtime.InteropServices.UCOMITypeInfo
---@return string
function m.GetTypeInfoName(pTI) end

---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib): @static
---@static
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return System.Guid
function m.GetTypeLibGuid(pTLB) end

---@static
---@param asm System.Reflection.Assembly
---@return System.Guid
function m.GetTypeLibGuidForAssembly(asm) end

---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib): @static
---@static
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return number
function m.GetTypeLibLcid(pTLB) end

---@overload fun(typelib:System.Runtime.InteropServices.ComTypes.ITypeLib): @static
---@static
---@param pTLB System.Runtime.InteropServices.UCOMITypeLib
---@return string
function m.GetTypeLibName(pTLB) end

---@static
---@param inputAssembly System.Reflection.Assembly
---@return System.Int32, System.Int32
function m.GetTypeLibVersionForAssembly(inputAssembly) end

---@static
---@param pfnMethodToWrap System.IntPtr
---@param pbSignature System.IntPtr
---@param cbSignature number
---@return System.IntPtr
function m.GetUnmanagedThunkForManagedMethodPtr(pfnMethodToWrap, pbSignature, cbSignature) end

---@static
---@param t System.Type
---@return boolean
function m.IsTypeVisibleFromCom(t) end

---@static
---@param m System.Reflection.MethodInfo
---@return number
function m.NumParamBytes(m) end

---@static
---@param clsid System.Guid
---@return System.Type
function m.GetTypeFromCLSID(clsid) end

---@static
---@param unknown System.IntPtr
---@return any
function m.GetUniqueObjectForIUnknown(unknown) end

---@static
---@param o any
---@return boolean
function m.IsComObject(o) end

---@static
---@return number
function m.GetLastWin32Error() end

---@overload fun(fieldName:string): @static
---@static
---@param t System.Type
---@param fieldName string
---@return System.IntPtr
function m.OffsetOf(t, fieldName) end

---@static
---@param m System.Reflection.MethodInfo
function m.Prelink(m) end

---@static
---@param c System.Type
function m.PrelinkAll(c) end

---@overload fun(ptr:System.IntPtr, len:number): @static
---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringAnsi(ptr) end

---@overload fun(ptr:System.IntPtr, byteLen:number): @static
---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringUTF8(ptr) end

---@overload fun(ptr:System.IntPtr, len:number): @static
---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringAuto(ptr) end

---@overload fun(ptr:System.IntPtr, len:number): @static
---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringUni(ptr) end

---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringBSTR(ptr) end

---@overload fun(ptr:System.IntPtr, structureType:System.Type): @static
---@overload fun(ptr:System.IntPtr, structure:any) @static
---@overload fun(ptr:System.IntPtr): @static
---@static
---@param ptr System.IntPtr
---@param structure any
function m.PtrToStructure(ptr, structure) end

---@static
---@param pUnk System.IntPtr
---@param iid System.Guid
---@return number, System.Guid, System.IntPtr
function m.QueryInterface(pUnk, iid) end

---@overload fun(ptr:System.IntPtr, ofs:number): @static
---@overload fun(ptr:any, ofs:number): @static
---@static
---@param ptr System.IntPtr
---@return number
function m.ReadByte(ptr) end

---@overload fun(ptr:System.IntPtr, ofs:number): @static
---@overload fun(ptr:any, ofs:number): @static
---@static
---@param ptr System.IntPtr
---@return number
function m.ReadInt16(ptr) end

---@overload fun(ptr:System.IntPtr, ofs:number): @static
---@overload fun(ptr:any, ofs:number): @static
---@static
---@param ptr System.IntPtr
---@return number
function m.ReadInt32(ptr) end

---@overload fun(ptr:System.IntPtr, ofs:number): @static
---@overload fun(ptr:any, ofs:number): @static
---@static
---@param ptr System.IntPtr
---@return number
function m.ReadInt64(ptr) end

---@overload fun(ptr:System.IntPtr, ofs:number): @static
---@overload fun(ptr:any, ofs:number): @static
---@static
---@param ptr System.IntPtr
---@return System.IntPtr
function m.ReadIntPtr(ptr) end

---@static
---@param pv System.IntPtr
---@param cb number
---@return System.IntPtr
function m.ReAllocCoTaskMem(pv, cb) end

---@static
---@param pv System.IntPtr
---@param cb System.IntPtr
---@return System.IntPtr
function m.ReAllocHGlobal(pv, cb) end

---@static
---@param pUnk System.IntPtr
---@return number
function m.Release(pUnk) end

---@static
---@param o any
---@return number
function m.ReleaseComObject(o) end

---@static
function m.ReleaseThreadCache() end

---@static
---@param obj any
---@param key any
---@param data any
---@return boolean
function m.SetComObjectData(obj, key, data) end

---@overload fun(t:System.Type): @static
---@overload fun(): @static
---@overload fun(structure:any): @static
---@static
---@param structure any
---@return number
function m.SizeOf(structure) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToBSTR(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToCoTaskMemAnsi(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToCoTaskMemAuto(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToCoTaskMemUni(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToHGlobalAnsi(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToAllocatedMemoryUTF8(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToHGlobalAuto(s) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToHGlobalUni(s) end

---@static
---@param s System.Security.SecureString
---@return System.IntPtr
function m.SecureStringToBSTR(s) end

---@static
---@param s System.Security.SecureString
---@return System.IntPtr
function m.SecureStringToCoTaskMemAnsi(s) end

---@static
---@param s System.Security.SecureString
---@return System.IntPtr
function m.SecureStringToCoTaskMemUnicode(s) end

---@static
---@param s System.Security.SecureString
---@return System.IntPtr
function m.SecureStringToGlobalAllocAnsi(s) end

---@static
---@param s System.Security.SecureString
---@return System.IntPtr
function m.SecureStringToGlobalAllocUnicode(s) end

---@overload fun(structure:any, ptr:System.IntPtr, fDeleteOld:boolean) @static
---@static
---@param structure any
---@param ptr System.IntPtr
---@param fDeleteOld boolean
function m.StructureToPtr(structure, ptr, fDeleteOld) end

---@overload fun(errorCode:number, errorInfo:System.IntPtr) @static
---@static
---@param errorCode number
function m.ThrowExceptionForHR(errorCode) end

---@overload fun(arr:any[], index:number): @static
---@static
---@param arr System.Array
---@param index number
---@return System.IntPtr
function m.UnsafeAddrOfPinnedArrayElement(arr, index) end

---@overload fun(ptr:System.IntPtr, ofs:number, val:number) @static
---@overload fun(ofs:number, val:number) @static
---@static
---@param ptr System.IntPtr
---@param val number
function m.WriteByte(ptr, val) end

---@overload fun(ptr:System.IntPtr, ofs:number, val:number) @static
---@overload fun(ofs:number, val:number) @static
---@overload fun(ptr:System.IntPtr, val:number) @static
---@overload fun(ptr:System.IntPtr, ofs:number, val:number) @static
---@overload fun(ofs:number, val:number) @static
---@static
---@param ptr System.IntPtr
---@param val number
function m.WriteInt16(ptr, val) end

---@overload fun(ptr:System.IntPtr, ofs:number, val:number) @static
---@overload fun(ofs:number, val:number) @static
---@static
---@param ptr System.IntPtr
---@param val number
function m.WriteInt32(ptr, val) end

---@overload fun(ptr:System.IntPtr, ofs:number, val:number) @static
---@overload fun(ofs:number, val:number) @static
---@static
---@param ptr System.IntPtr
---@param val number
function m.WriteInt64(ptr, val) end

---@overload fun(ptr:System.IntPtr, ofs:number, val:System.IntPtr) @static
---@overload fun(ofs:number, val:System.IntPtr) @static
---@static
---@param ptr System.IntPtr
---@param val System.IntPtr
function m.WriteIntPtr(ptr, val) end

---@overload fun(errorCode:number, errorInfo:System.IntPtr): @static
---@static
---@param errorCode number
---@return System.Exception
function m.GetExceptionForHR(errorCode) end

---@static
---@param o any
---@return number
function m.FinalReleaseComObject(o) end

---@overload fun(ptr:System.IntPtr): @static
---@static
---@param ptr System.IntPtr
---@param t System.Type
---@return fun(...:any|any[]):
function m.GetDelegateForFunctionPointer(ptr, t) end

---@overload fun(d:any): @static
---@static
---@param d fun(...:any|any[]):
---@return System.IntPtr
function m.GetFunctionPointerForDelegate(d) end

System.Runtime.InteropServices.Marshal = m
return m
