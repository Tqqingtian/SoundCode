---@class System.Runtime.InteropServices.WindowsRuntime.UnsafeNativeMethods : System.Object
local m = {}

---@static
---@param sourceString string
---@param length number
---@param hstring System.IntPtr*
---@return number
function m.WindowsCreateString(sourceString, length, hstring) end

---@static
---@param hstring System.IntPtr
---@return number
function m.WindowsDeleteString(hstring) end

---@static
---@param hstring System.IntPtr
---@param length System.UInt32*
---@return System.Char*
function m.WindowsGetStringRawBuffer(hstring, length) end

---@static
---@param error number
---@param message string
---@param languageException System.IntPtr
---@return boolean
function m.RoOriginateLanguageException(error, message, languageException) end

---@static
---@param error System.Runtime.InteropServices.WindowsRuntime.IRestrictedErrorInfo
function m.RoReportUnhandledError(error) end

---@static
---@return System.Runtime.InteropServices.WindowsRuntime.IRestrictedErrorInfo
function m.GetRestrictedErrorInfo() end

System.Runtime.InteropServices.WindowsRuntime.UnsafeNativeMethods = m
return m
