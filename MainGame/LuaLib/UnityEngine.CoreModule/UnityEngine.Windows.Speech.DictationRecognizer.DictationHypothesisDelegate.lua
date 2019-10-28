---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param text string
function m:Invoke(text) end

---@virtual
---@param text string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(text, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate = m
return m
