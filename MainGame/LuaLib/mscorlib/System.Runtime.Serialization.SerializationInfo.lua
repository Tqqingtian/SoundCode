---@class System.Runtime.Serialization.SerializationInfo : System.Object
---@field public FullTypeName string
---@field public AssemblyName string
---@field public MemberCount number
---@field public ObjectType System.Type
---@field public IsFullTypeNameSetExplicit boolean
---@field public IsAssemblyNameSetExplicit boolean
local m = {}

---@param type System.Type
function m:SetType(type) end

---@return System.Runtime.Serialization.SerializationInfoEnumerator
function m:GetEnumerator() end

---@overload fun(name:string, value:any)
---@overload fun(name:string, value:boolean)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:number)
---@overload fun(name:string, value:System.Decimal)
---@overload fun(name:string, value:System.DateTime)
---@param name string
---@param value any
---@param type System.Type
function m:AddValue(name, value, type) end

---@param name string
---@param type System.Type
---@return any
function m:GetValue(name, type) end

---@param name string
---@return boolean
function m:GetBoolean(name) end

---@param name string
---@return number
function m:GetChar(name) end

---@param name string
---@return number
function m:GetSByte(name) end

---@param name string
---@return number
function m:GetByte(name) end

---@param name string
---@return number
function m:GetInt16(name) end

---@param name string
---@return number
function m:GetUInt16(name) end

---@param name string
---@return number
function m:GetInt32(name) end

---@param name string
---@return number
function m:GetUInt32(name) end

---@param name string
---@return number
function m:GetInt64(name) end

---@param name string
---@return number
function m:GetUInt64(name) end

---@param name string
---@return number
function m:GetSingle(name) end

---@param name string
---@return number
function m:GetDouble(name) end

---@param name string
---@return System.Decimal
function m:GetDecimal(name) end

---@param name string
---@return System.DateTime
function m:GetDateTime(name) end

---@param name string
---@return string
function m:GetString(name) end

System.Runtime.Serialization.SerializationInfo = m
return m
