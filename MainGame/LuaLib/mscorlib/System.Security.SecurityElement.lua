---@class System.Security.SecurityElement : System.Object
---@field public Attributes System.Collections.Hashtable
---@field public Children System.Collections.ArrayList
---@field public Tag string
---@field public Text string
local m = {}

---@param name string
---@param value string
function m:AddAttribute(name, value) end

---@param child System.Security.SecurityElement
function m:AddChild(child) end

---@param name string
---@return string
function m:Attribute(name) end

---@return System.Security.SecurityElement
function m:Copy() end

---@param other System.Security.SecurityElement
---@return boolean
function m:Equal(other) end

---@static
---@param str string
---@return string
function m.Escape(str) end

---@static
---@param xml string
---@return System.Security.SecurityElement
function m.FromString(xml) end

---@static
---@param name string
---@return boolean
function m.IsValidAttributeName(name) end

---@static
---@param value string
---@return boolean
function m.IsValidAttributeValue(value) end

---@static
---@param tag string
---@return boolean
function m.IsValidTag(tag) end

---@static
---@param text string
---@return boolean
function m.IsValidText(text) end

---@param tag string
---@return System.Security.SecurityElement
function m:SearchForChildByTag(tag) end

---@param tag string
---@return string
function m:SearchForTextOfTag(tag) end

---@virtual
---@return string
function m:ToString() end

System.Security.SecurityElement = m
return m
