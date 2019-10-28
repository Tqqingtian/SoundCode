---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param status UnityEngine.Windows.Speech.SpeechSystemStatus
function m:Invoke(status) end

---@virtual
---@param status UnityEngine.Windows.Speech.SpeechSystemStatus
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(status, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate = m
return m
