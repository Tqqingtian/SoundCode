---@class UnityEngine.SparseTexture : UnityEngine.Texture
---@field public tileWidth number
---@field public tileHeight number
---@field public isCreated boolean
local m = {}

---@param tileX number
---@param tileY number
---@param miplevel number
---@param data UnityEngine.Color32[]
function m:UpdateTile(tileX, tileY, miplevel, data) end

---@param tileX number
---@param tileY number
---@param miplevel number
---@param data string
function m:UpdateTileRaw(tileX, tileY, miplevel, data) end

---@param tileX number
---@param tileY number
---@param miplevel number
function m:UnloadTile(tileX, tileY, miplevel) end

UnityEngine.SparseTexture = m
return m
