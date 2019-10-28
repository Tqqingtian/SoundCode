---@class System.Threading.Monitor : System.Object
local m = {}

---@overload fun(obj:any, lockTaken:System.Boolean): @static
---@static
---@param obj any
function m.Enter(obj) end

---@static
---@param obj any
function m.Exit(obj) end

---@overload fun(obj:any, lockTaken:System.Boolean): @static
---@overload fun(obj:any, millisecondsTimeout:number): @static
---@overload fun(obj:any, timeout:System.TimeSpan): @static
---@overload fun(obj:any, millisecondsTimeout:number, lockTaken:System.Boolean): @static
---@overload fun(obj:any, timeout:System.TimeSpan, lockTaken:System.Boolean): @static
---@static
---@param obj any
---@return boolean
function m.TryEnter(obj) end

---@static
---@param obj any
---@return boolean
function m.IsEntered(obj) end

---@overload fun(obj:any, timeout:System.TimeSpan, exitContext:boolean): @static
---@overload fun(obj:any, millisecondsTimeout:number): @static
---@overload fun(obj:any, timeout:System.TimeSpan): @static
---@overload fun(obj:any): @static
---@static
---@param obj any
---@param millisecondsTimeout number
---@param exitContext boolean
---@return boolean
function m.Wait(obj, millisecondsTimeout, exitContext) end

---@static
---@param obj any
function m.Pulse(obj) end

---@static
---@param obj any
function m.PulseAll(obj) end

System.Threading.Monitor = m
return m
