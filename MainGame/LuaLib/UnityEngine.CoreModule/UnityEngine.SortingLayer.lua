---@class UnityEngine.SortingLayer : System.ValueType
---@field public layers UnityEngine.SortingLayer[] @static
---@field public id number
---@field public name string
---@field public value number
local m = {}

---@static
---@param id number
---@return number
function m.GetLayerValueFromID(id) end

---@static
---@param name string
---@return number
function m.GetLayerValueFromName(name) end

---@static
---@param name string
---@return number
function m.NameToID(name) end

---@static
---@param id number
---@return string
function m.IDToName(id) end

---@static
---@param id number
---@return boolean
function m.IsValid(id) end

UnityEngine.SortingLayer = m
return m
