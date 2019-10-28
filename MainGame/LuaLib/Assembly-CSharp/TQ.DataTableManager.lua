---@class TQ.DataTableManager : TQ.ManagerBase
---@field public TotalTableCount number
---@field public CurrLoadTableCount number
---@field public m_DataTabkeBundle UnityEngine.AssetBundle
---@field public Sys_CodeDBModel Sys_CodeDBModel
---@field public Sys_EffectDBModel Sys_EffectDBModel
---@field public LocalizationDBModel TQ.LocalizationDBModel
---@field public Sys_PrefabDBModel Sys_PrefabDBModel
---@field public Sys_SoundDBModel Sys_SoundDBModel
---@field public Sys_StorySoundDBModel Sys_StorySoundDBModel
---@field public Sys_UIFormDBModel Sys_UIFormDBModel
---@field public ChapterDBModel ChapterDBModel
---@field public GameLevelDBModel GameLevelDBModel
---@field public TaskDBModel TaskDBModel
---@field public Sys_SceneDBModel Sys_SceneDBModel
---@field public Sys_SceneDatailDBModel Sys_SceneDatailDBModel
local m = {}

function m:LoadDataTable() end

function m:LoadDataTableAsync() end

---@param tableName string
---@param onComplete fun(obj:string)
function m:GetDataTableBunffer(tableName, onComplete) end

function m:Clear() end

TQ.DataTableManager = m
return m
