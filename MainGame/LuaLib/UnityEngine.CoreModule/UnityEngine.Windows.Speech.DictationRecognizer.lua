---@class UnityEngine.Windows.Speech.DictationRecognizer : System.Object
---@field public Status UnityEngine.Windows.Speech.SpeechSystemStatus
---@field public AutoSilenceTimeoutSeconds number
---@field public InitialSilenceTimeoutSeconds number
local m = {}

---@param value fun(text:string)
function m:add_DictationHypothesis(value) end

---@param value fun(text:string)
function m:remove_DictationHypothesis(value) end

---@param value fun(text:string, confidence:UnityEngine.Windows.Speech.ConfidenceLevel)
function m:add_DictationResult(value) end

---@param value fun(text:string, confidence:UnityEngine.Windows.Speech.ConfidenceLevel)
function m:remove_DictationResult(value) end

---@param value fun(cause:UnityEngine.Windows.Speech.DictationCompletionCause)
function m:add_DictationComplete(value) end

---@param value fun(cause:UnityEngine.Windows.Speech.DictationCompletionCause)
function m:remove_DictationComplete(value) end

---@param value fun(error:string, hresult:number)
function m:add_DictationError(value) end

---@param value fun(error:string, hresult:number)
function m:remove_DictationError(value) end

function m:Start() end

function m:Stop() end

---@virtual
function m:Dispose() end

UnityEngine.Windows.Speech.DictationRecognizer = m
return m
