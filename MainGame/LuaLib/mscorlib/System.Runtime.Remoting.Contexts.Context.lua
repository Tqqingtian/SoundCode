---@class System.Runtime.Remoting.Contexts.Context : System.Object
---@field public DefaultContext System.Runtime.Remoting.Contexts.Context @static
---@field public ContextID number
---@field public ContextProperties System.Runtime.Remoting.Contexts.IContextProperty[]
local m = {}

---@static
---@param prop System.Runtime.Remoting.Contexts.IDynamicProperty
---@param obj System.ContextBoundObject
---@param ctx System.Runtime.Remoting.Contexts.Context
---@return boolean
function m.RegisterDynamicProperty(prop, obj, ctx) end

---@static
---@param name string
---@param obj System.ContextBoundObject
---@param ctx System.Runtime.Remoting.Contexts.Context
---@return boolean
function m.UnregisterDynamicProperty(name, obj, ctx) end

---@virtual
---@param name string
---@return System.Runtime.Remoting.Contexts.IContextProperty
function m:GetProperty(name) end

---@virtual
---@param prop System.Runtime.Remoting.Contexts.IContextProperty
function m:SetProperty(prop) end

---@virtual
function m:Freeze() end

---@virtual
---@return string
function m:ToString() end

---@param deleg fun()
function m:DoCallBack(deleg) end

---@static
---@return System.LocalDataStoreSlot
function m.AllocateDataSlot() end

---@static
---@param name string
---@return System.LocalDataStoreSlot
function m.AllocateNamedDataSlot(name) end

---@static
---@param name string
function m.FreeNamedDataSlot(name) end

---@static
---@param name string
---@return System.LocalDataStoreSlot
function m.GetNamedDataSlot(name) end

---@static
---@param slot System.LocalDataStoreSlot
---@return any
function m.GetData(slot) end

---@static
---@param slot System.LocalDataStoreSlot
---@param data any
function m.SetData(slot, data) end

System.Runtime.Remoting.Contexts.Context = m
return m
