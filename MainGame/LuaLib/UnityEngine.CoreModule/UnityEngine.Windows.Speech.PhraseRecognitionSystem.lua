---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem : System.Object
---@field public isSupported boolean @static
---@field public Status UnityEngine.Windows.Speech.SpeechSystemStatus @static
local m = {}

---@static
function m.Restart() end

---@static
function m.Shutdown() end

---@static
---@param value fun(errorCode:UnityEngine.Windows.Speech.SpeechError)
function m.add_OnError(value) end

---@static
---@param value fun(errorCode:UnityEngine.Windows.Speech.SpeechError)
function m.remove_OnError(value) end

---@static
---@param value fun(status:UnityEngine.Windows.Speech.SpeechSystemStatus)
function m.add_OnStatusChanged(value) end

---@static
---@param value fun(status:UnityEngine.Windows.Speech.SpeechSystemStatus)
function m.remove_OnStatusChanged(value) end

UnityEngine.Windows.Speech.PhraseRecognitionSystem = m
return m
