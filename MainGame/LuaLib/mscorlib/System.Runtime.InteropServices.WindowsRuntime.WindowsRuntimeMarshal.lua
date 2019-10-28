---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal : System.Object
local m = {}

---@static
---@param addMethod fun(arg:any):
---@param removeMethod fun(obj:System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken)
---@param handler any
function m.AddEventHandler(addMethod, removeMethod, handler) end

---@static
---@param removeMethod fun(obj:System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken)
---@param handler any
function m.RemoveEventHandler(removeMethod, handler) end

---@static
---@param removeMethod fun(obj:System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken)
function m.RemoveAllEventHandlers(removeMethod) end

---@static
---@param type System.Type
---@return System.Runtime.InteropServices.WindowsRuntime.IActivationFactory
function m.GetActivationFactory(type) end

---@static
---@param s string
---@return System.IntPtr
function m.StringToHString(s) end

---@static
---@param ptr System.IntPtr
---@return string
function m.PtrToStringHString(ptr) end

---@static
---@param ptr System.IntPtr
function m.FreeHString(ptr) end

System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal = m
return m
