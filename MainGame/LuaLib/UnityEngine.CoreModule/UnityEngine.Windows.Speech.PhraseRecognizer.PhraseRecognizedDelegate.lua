---@class UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param args UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
function m:Invoke(args) end

---@virtual
---@param args UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(args, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate = m
return m
