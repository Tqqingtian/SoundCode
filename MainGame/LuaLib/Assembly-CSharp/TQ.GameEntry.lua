---@class TQ.GameEntry : UnityEngine.MonoBehaviour
---@field public Lua TQ.LuaComponent @static
---@field public Event TQ.EventComponent @static
---@field public Time TQ.TimeComponent @static
---@field public Fsm TQ.FsmComponent @static
---@field public Procedure TQ.ProcedureComponent @static
---@field public DataTable TQ.DataTableComponent @static
---@field public Socket TQ.SocketComponent @static
---@field public Http TQ.HttpComponent @static
---@field public Data TQ.DataComponent @static
---@field public Localization TQ.LocalizationComponent @static
---@field public Pool TQ.PoolComponent @static
---@field public Scene TQ.SceneComponent @static
---@field public Setting TQ.SettingComponent @static
---@field public GameObj TQ.GameObjComponent @static
---@field public Resource TQ.ResourceComponent @static
---@field public Download TQ.DownloadComponent @static
---@field public UI TQ.UIComponent @static
local m = {}

---@overload fun(catetory:LogCategory, message:string) @static
---@static
---@param catetory LogCategory
---@param message string
---@param ... string|string[]
function m.Log(catetory, message, ...) end

---@overload fun(message:any) @static
---@static
---@param message any
---@param ... any|any[]
function m.LogError(message, ...) end

---@static
---@param component TQ.IUpdateComponent
function m.RegisterUpdateComponent(component) end

---@static
---@param component TQ.IUpdateComponent
function m.RemoveUpdateComponent(component) end

TQ.GameEntry = m
return m
