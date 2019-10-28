---@class UnityEngine.Windows.Speech.PhraseRecognizer : System.Object
---@field public IsRunning boolean
local m = {}

---@param value fun(args:UnityEngine.Windows.Speech.PhraseRecognizedEventArgs)
function m:add_OnPhraseRecognized(value) end

---@param value fun(args:UnityEngine.Windows.Speech.PhraseRecognizedEventArgs)
function m:remove_OnPhraseRecognized(value) end

function m:Start() end

function m:Stop() end

---@virtual
function m:Dispose() end

UnityEngine.Windows.Speech.PhraseRecognizer = m
return m
