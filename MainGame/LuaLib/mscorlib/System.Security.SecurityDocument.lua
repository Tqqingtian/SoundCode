---@class System.Security.SecurityDocument : System.Object
local m = {}

---@param size number
function m:GuaranteeSize(size) end

---@param str string
---@param position System.Int32
---@return System.Int32
function m:AddString(str, position) end

---@param str string
---@param position System.Int32
---@return System.Int32
function m:AppendString(str, position) end

---@static
---@param str string
---@return number
function m.EncodedStringSize(str) end

---@overload fun(position:System.Int32, bCreate:boolean):(, System.Int32)
---@param position System.Int32
---@return string, System.Int32
function m:GetString(position) end

---@param b number
---@param position System.Int32
---@return System.Int32
function m:AddToken(b, position) end

---@param elCurrent System.Security.SecurityElement
---@param position System.Int32
---@return System.Int32
function m:ConvertElement(elCurrent, position) end

---@return System.Security.SecurityElement
function m:GetRootElement() end

---@param position number
---@param bCreate boolean
---@return System.Security.SecurityElement
function m:GetElement(position, bCreate) end

---@param position number
---@return string
function m:GetTagForElement(position) end

---@param position number
---@return System.Collections.ArrayList
function m:GetChildrenPositionForElement(position) end

---@param position number
---@param attributeName string
---@return string
function m:GetAttributeForElement(position, attributeName) end

System.Security.SecurityDocument = m
return m
