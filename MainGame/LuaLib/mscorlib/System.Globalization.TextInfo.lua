---@class System.Globalization.TextInfo : System.Object
---@field public ANSICodePage number
---@field public OEMCodePage number
---@field public MacCodePage number
---@field public EBCDICCodePage number
---@field public LCID number
---@field public CultureName string
---@field public IsReadOnly boolean
---@field public ListSeparator string
---@field public IsRightToLeft boolean
local m = {}

---@virtual
---@return any
function m:Clone() end

---@static
---@param textInfo System.Globalization.TextInfo
---@return System.Globalization.TextInfo
function m.ReadOnly(textInfo) end

---@overload fun(str:string): @virtual
---@virtual
---@param c number
---@return number
function m:ToLower(c) end

---@overload fun(str:string): @virtual
---@virtual
---@param c number
---@return number
function m:ToUpper(c) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

---@param str string
---@return string
function m:ToTitleCase(str) end

System.Globalization.TextInfo = m
return m
