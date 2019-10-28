---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param text string
---@param confidence UnityEngine.Windows.Speech.ConfidenceLevel
function m:Invoke(text, confidence) end

---@virtual
---@param text string
---@param confidence UnityEngine.Windows.Speech.ConfidenceLevel
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(text, confidence, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate = m
return m
