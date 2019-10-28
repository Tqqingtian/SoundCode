---@class System.Diagnostics.Contracts.Contract : System.Object
local m = {}

---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.Assume(condition) end

---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.Assert(condition) end

---@overload fun(condition:boolean, userMessage:string) @static
---@overload fun(condition:boolean) @static
---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.Requires(condition) end

---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.Ensures(condition) end

---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.EnsuresOnThrow(condition) end

---@static
---@return any
function m.Result() end

---@static
---@return any, any
function m.ValueAtReturn() end

---@static
---@param value any
---@return any
function m.OldValue(value) end

---@overload fun(condition:boolean, userMessage:string) @static
---@static
---@param condition boolean
function m.Invariant(condition) end

---@overload fun(collection:any, predicate:fun(obj:any):): @static
---@static
---@param fromInclusive number
---@param toExclusive number
---@param predicate fun(obj:number):
---@return boolean
function m.ForAll(fromInclusive, toExclusive, predicate) end

---@overload fun(collection:any, predicate:fun(obj:any):): @static
---@static
---@param fromInclusive number
---@param toExclusive number
---@param predicate fun(obj:number):
---@return boolean
function m.Exists(fromInclusive, toExclusive, predicate) end

---@static
function m.EndContractBlock() end

---@static
---@param value fun(sender:any, e:System.Diagnostics.Contracts.ContractFailedEventArgs)
function m.add_ContractFailed(value) end

---@static
---@param value fun(sender:any, e:System.Diagnostics.Contracts.ContractFailedEventArgs)
function m.remove_ContractFailed(value) end

System.Diagnostics.Contracts.Contract = m
return m
