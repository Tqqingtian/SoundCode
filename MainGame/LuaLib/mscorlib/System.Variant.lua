---@class System.Variant : System.ValueType
---@field public vt number
---@field public wReserved1 number
---@field public wReserved2 number
---@field public wReserved3 number
---@field public llVal number
---@field public lVal number
---@field public bVal number
---@field public iVal number
---@field public fltVal number
---@field public dblVal number
---@field public boolVal number
---@field public bstrVal System.IntPtr
---@field public cVal number
---@field public uiVal number
---@field public ulVal number
---@field public ullVal number
---@field public intVal number
---@field public uintVal number
---@field public pdispVal System.IntPtr
---@field public bRecord System.BRECORD
local m = {}

---@param obj any
function m:SetValue(obj) end

---@static
---@param vt number
---@param addr System.IntPtr
---@return any
function m.GetValueAt(vt, addr) end

---@return any
function m:GetValue() end

function m:Clear() end

System.Variant = m
return m
