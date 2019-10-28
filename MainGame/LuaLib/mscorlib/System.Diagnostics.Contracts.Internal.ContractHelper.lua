---@class System.Diagnostics.Contracts.Internal.ContractHelper : System.Object
local m = {}

---@static
---@param failureKind System.Diagnostics.Contracts.ContractFailureKind
---@param userMessage string
---@param conditionText string
---@param innerException System.Exception
---@return string
function m.RaiseContractFailedEvent(failureKind, userMessage, conditionText, innerException) end

---@static
---@param kind System.Diagnostics.Contracts.ContractFailureKind
---@param displayMessage string
---@param userMessage string
---@param conditionText string
---@param innerException System.Exception
function m.TriggerFailure(kind, displayMessage, userMessage, conditionText, innerException) end

System.Diagnostics.Contracts.Internal.ContractHelper = m
return m
