---@class UnityEngine.IPlayerEditorConnectionNative : table
local m = {}

---@abstract
function m:Initialize() end

---@abstract
function m:DisconnectAll() end

---@abstract
---@param messageId System.Guid
---@param data string
---@param playerId number
function m:SendMessage(messageId, data, playerId) end

---@abstract
function m:Poll() end

---@abstract
---@param messageId System.Guid
function m:RegisterInternal(messageId) end

---@abstract
---@param messageId System.Guid
function m:UnregisterInternal(messageId) end

---@abstract
---@return boolean
function m:IsConnected() end

UnityEngine.IPlayerEditorConnectionNative = m
return m
