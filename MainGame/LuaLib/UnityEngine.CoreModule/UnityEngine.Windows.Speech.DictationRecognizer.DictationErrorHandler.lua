---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param error string
---@param hresult number
function m:Invoke(error, hresult) end

---@virtual
---@param error string
---@param hresult number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(error, hresult, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler = m
return m
