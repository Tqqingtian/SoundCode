---@class UnityEngine.Playables.PlayableExtensions : System.Object
local m = {}

---@static
---@param playable System.ValueType
---@return boolean
function m.IsNull(playable) end

---@static
---@param playable System.ValueType
---@return boolean
function m.IsValid(playable) end

---@static
---@param playable System.ValueType
function m.Destroy(playable) end

---@static
---@param playable System.ValueType
---@return UnityEngine.Playables.PlayableGraph
function m.GetGraph(playable) end

---@static
---@param playable System.ValueType
---@param value UnityEngine.Playables.PlayState
function m.SetPlayState(playable, value) end

---@static
---@param playable System.ValueType
---@return UnityEngine.Playables.PlayState
function m.GetPlayState(playable) end

---@static
---@param playable System.ValueType
function m.Play(playable) end

---@static
---@param playable System.ValueType
function m.Pause(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetSpeed(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetSpeed(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetDuration(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetDuration(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetTime(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetTime(playable) end

---@static
---@param playable System.ValueType
---@return number
function m.GetPreviousTime(playable) end

---@static
---@param playable System.ValueType
---@param value boolean
function m.SetDone(playable, value) end

---@static
---@param playable System.ValueType
---@return boolean
function m.IsDone(playable) end

---@static
---@param playable System.ValueType
---@param value boolean
function m.SetPropagateSetTime(playable, value) end

---@static
---@param playable System.ValueType
---@return boolean
function m.GetPropagateSetTime(playable) end

---@static
---@param playable System.ValueType
---@return boolean
function m.CanChangeInputs(playable) end

---@static
---@param playable System.ValueType
---@return boolean
function m.CanSetWeights(playable) end

---@static
---@param playable System.ValueType
---@return boolean
function m.CanDestroy(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetInputCount(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetInputCount(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetOutputCount(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetOutputCount(playable) end

---@static
---@param playable System.ValueType
---@param inputPort number
---@return UnityEngine.Playables.Playable
function m.GetInput(playable, inputPort) end

---@static
---@param playable System.ValueType
---@param outputPort number
---@return UnityEngine.Playables.Playable
function m.GetOutput(playable, outputPort) end

---@overload fun(playable:System.ValueType, input:System.ValueType, weight:number) @static
---@static
---@param playable System.ValueType
---@param inputIndex number
---@param weight number
function m.SetInputWeight(playable, inputIndex, weight) end

---@static
---@param playable System.ValueType
---@param inputIndex number
---@return number
function m.GetInputWeight(playable, inputIndex) end

---@overload fun(playable:System.ValueType, inputIndex:number, sourcePlayable:System.ValueType, sourceOutputIndex:number, weight:number) @static
---@static
---@param playable System.ValueType
---@param inputIndex number
---@param sourcePlayable System.ValueType
---@param sourceOutputIndex number
function m.ConnectInput(playable, inputIndex, sourcePlayable, sourceOutputIndex) end

---@static
---@param playable System.ValueType
---@param inputPort number
function m.DisconnectInput(playable, inputPort) end

---@overload fun(playable:System.ValueType, sourcePlayable:System.ValueType, sourceOutputIndex:number): @static
---@static
---@param playable System.ValueType
---@param sourcePlayable System.ValueType
---@param sourceOutputIndex number
---@param weight number
---@return number
function m.AddInput(playable, sourcePlayable, sourceOutputIndex, weight) end

---@static
---@param playable System.ValueType
---@param delay number
function m.SetDelay(playable, delay) end

---@static
---@param playable System.ValueType
---@return number
function m.GetDelay(playable) end

---@static
---@param playable System.ValueType
---@return boolean
function m.IsDelayed(playable) end

---@static
---@param playable System.ValueType
---@param value number
function m.SetLeadTime(playable, value) end

---@static
---@param playable System.ValueType
---@return number
function m.GetLeadTime(playable) end

---@static
---@param playable System.ValueType
---@return UnityEngine.Playables.PlayableTraversalMode
function m.GetTraversalMode(playable) end

---@static
---@param playable System.ValueType
---@param mode UnityEngine.Playables.PlayableTraversalMode
function m.SetTraversalMode(playable, mode) end

UnityEngine.Playables.PlayableExtensions = m
return m
