---@class PageView : UnityEngine.MonoBehaviour
---@field public itemPool UnityEngine.Transform
---@field public itemPanel UnityEngine.Transform
---@field public itemPrefab UnityEngine.GameObject
---@field public txtPage UnityEngine.UI.Text
---@field public m_UISelectRoleDragView UISelectRoleDragView
---@field public pageDotParent UnityEngine.Transform
---@field public pageDot UnityEngine.GameObject
---@field public RowCount number
---@field public ColumnCount number
---@field public ItemWidth number
---@field public OnItemCreate fun(dataIndex:number, obj:UnityEngine.GameObject)
---@field public PageSize number
local m = {}

---@param totalCount number
function m:InitData(totalCount) end

---@param name string
function m:OnPageButtonCLick(name) end

PageView = m
return m
