---@class System.Progress_1_T_ : System.Object
local m = {}

---@param value fun(sender:any, e:any)
function m:add_ProgressChanged(value) end

---@param value fun(sender:any, e:any)
function m:remove_ProgressChanged(value) end

System.Progress_1_T_ = m
return m
