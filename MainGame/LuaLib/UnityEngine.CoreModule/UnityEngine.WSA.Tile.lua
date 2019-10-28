---@class UnityEngine.WSA.Tile : System.Object
---@field public main UnityEngine.WSA.Tile @static
---@field public id string
---@field public hasUserConsent boolean
---@field public exists boolean
local m = {}

---@static
---@param templ UnityEngine.WSA.TileTemplate
---@return string
function m.GetTemplate(templ) end

---@overload fun(medium:string, wide:string, large:string, text:string)
---@param xml string
function m:Update(xml) end

---@param uri string
---@param interval number
function m:PeriodicUpdate(uri, interval) end

function m:StopPeriodicUpdate() end

---@param image string
function m:UpdateBadgeImage(image) end

---@param number number
function m:UpdateBadgeNumber(number) end

function m:RemoveBadge() end

---@param uri string
---@param interval number
function m:PeriodicBadgeUpdate(uri, interval) end

function m:StopPeriodicBadgeUpdate() end

---@static
---@param tileId string
---@return boolean
function m.Exists(tileId) end

---@overload fun(data:UnityEngine.WSA.SecondaryTileData, pos:UnityEngine.Vector2): @static
---@overload fun(data:UnityEngine.WSA.SecondaryTileData, area:UnityEngine.Rect): @static
---@static
---@param data UnityEngine.WSA.SecondaryTileData
---@return UnityEngine.WSA.Tile
function m.CreateOrUpdateSecondary(data) end

---@static
---@param tileId string
---@return UnityEngine.WSA.Tile
function m.GetSecondary(tileId) end

---@static
---@return UnityEngine.WSA.Tile[]
function m.GetSecondaries() end

---@overload fun(pos:UnityEngine.Vector2)
---@overload fun(area:UnityEngine.Rect)
function m:Delete() end

---@overload fun(tileId:string, pos:UnityEngine.Vector2) @static
---@overload fun(tileId:string, area:UnityEngine.Rect) @static
---@static
---@param tileId string
function m.DeleteSecondary(tileId) end

UnityEngine.WSA.Tile = m
return m
