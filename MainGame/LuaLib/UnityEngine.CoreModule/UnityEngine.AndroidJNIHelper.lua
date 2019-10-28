---@class UnityEngine.AndroidJNIHelper : System.Object
---@field public debug boolean @static
local m = {}

---@overload fun(javaClass:System.IntPtr, signature:string): @static
---@overload fun(jclass:System.IntPtr, args:any[]): @static
---@static
---@param javaClass System.IntPtr
---@return System.IntPtr
function m.GetConstructorID(javaClass) end

---@overload fun(javaClass:System.IntPtr, methodName:string, signature:string): @static
---@overload fun(javaClass:System.IntPtr, methodName:string, signature:string, isStatic:boolean): @static
---@overload fun(jclass:System.IntPtr, methodName:string, args:any[], isStatic:boolean): @static
---@overload fun(jclass:System.IntPtr, methodName:string, args:any[], isStatic:boolean): @static
---@static
---@param javaClass System.IntPtr
---@param methodName string
---@return System.IntPtr
function m.GetMethodID(javaClass, methodName) end

---@overload fun(javaClass:System.IntPtr, fieldName:string, signature:string): @static
---@overload fun(javaClass:System.IntPtr, fieldName:string, signature:string, isStatic:boolean): @static
---@overload fun(jclass:System.IntPtr, fieldName:string, isStatic:boolean): @static
---@static
---@param javaClass System.IntPtr
---@param fieldName string
---@return System.IntPtr
function m.GetFieldID(javaClass, fieldName) end

---@static
---@param jrunnable fun()
---@return System.IntPtr
function m.CreateJavaRunnable(jrunnable) end

---@static
---@param proxy UnityEngine.AndroidJavaProxy
---@return System.IntPtr
function m.CreateJavaProxy(proxy) end

---@static
---@param array System.Array
---@return System.IntPtr
function m.ConvertToJNIArray(array) end

---@static
---@param args any[]
---@return UnityEngine.jvalue[]
function m.CreateJNIArgArray(args) end

---@static
---@param args any[]
---@param jniArgs UnityEngine.jvalue[]
function m.DeleteJNIArgArray(args, jniArgs) end

---@overload fun(args:any[]): @static
---@overload fun(args:any[]): @static
---@static
---@param obj any
---@return string
function m.GetSignature(obj) end

---@static
---@param array System.IntPtr
---@return any
function m.ConvertFromJNIArray(array) end

UnityEngine.AndroidJNIHelper = m
return m
