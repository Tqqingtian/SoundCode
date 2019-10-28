---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param cause UnityEngine.Windows.Speech.DictationCompletionCause
function m:Invoke(cause) end

---@virtual
---@param cause UnityEngine.Windows.Speech.DictationCompletionCause
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(cause, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate = m
return m
