---@class System.Diagnostics.Contracts.ContractFailedEventArgs : System.EventArgs
---@field public Message string
---@field public Condition string
---@field public FailureKind System.Diagnostics.Contracts.ContractFailureKind
---@field public OriginalException System.Exception
---@field public Handled boolean
---@field public Unwind boolean
local m = {}

function m:SetHandled() end

function m:SetUnwind() end

System.Diagnostics.Contracts.ContractFailedEventArgs = m
return m
