---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param errorCode UnityEngine.Windows.Speech.SpeechError
function m:Invoke(errorCode) end

---@virtual
---@param errorCode UnityEngine.Windows.Speech.SpeechError
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(errorCode, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate = m
return m
