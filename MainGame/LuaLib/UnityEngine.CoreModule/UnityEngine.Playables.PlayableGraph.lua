---@class UnityEngine.Playables.PlayableGraph : System.ValueType
local m = {}

---@param index number
---@return UnityEngine.Playables.Playable
function m:GetRootPlayable(index) end

---@param source System.ValueType
---@param sourceOutputPort number
---@param destination System.ValueType
---@param destinationInputPort number
---@return boolean
function m:Connect(source, sourceOutputPort, destination, destinationInputPort) end

---@param input System.ValueType
---@param inputPort number
function m:Disconnect(input, inputPort) end

---@param playable System.ValueType
function m:DestroyPlayable(playable) end

---@param playable System.ValueType
function m:DestroySubgraph(playable) end

---@param output System.ValueType
function m:DestroyOutput(output) end

---@return number
function m:GetOutputCountByType() end

---@param index number
---@return UnityEngine.Playables.PlayableOutput
function m:GetOutput(index) end

---@param index number
---@return UnityEngine.Playables.PlayableOutput
function m:GetOutputByType(index) end

---@overload fun(deltaTime:number)
function m:Evaluate() end

---@overload fun(name:string): @static
---@static
---@return UnityEngine.Playables.PlayableGraph
function m.Create() end

function m:Destroy() end

---@return boolean
function m:IsValid() end

---@return boolean
function m:IsPlaying() end

---@return boolean
function m:IsDone() end

function m:Play() end

function m:Stop() end

---@return UnityEngine.Playables.DirectorUpdateMode
function m:GetTimeUpdateMode() end

---@param value UnityEngine.Playables.DirectorUpdateMode
function m:SetTimeUpdateMode(value) end

---@return UnityEngine.IExposedPropertyTable
function m:GetResolver() end

---@param value UnityEngine.IExposedPropertyTable
function m:SetResolver(value) end

---@return number
function m:GetPlayableCount() end

---@return number
function m:GetRootPlayableCount() end

---@return number
function m:GetOutputCount() end

---@return string
function m:GetEditorName() end

UnityEngine.Playables.PlayableGraph = m
return m
