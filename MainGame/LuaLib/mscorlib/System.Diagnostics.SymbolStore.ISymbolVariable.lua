---@class System.Diagnostics.SymbolStore.ISymbolVariable : table
---@field public AddressField1 number
---@field public AddressField2 number
---@field public AddressField3 number
---@field public AddressKind System.Diagnostics.SymbolStore.SymAddressKind
---@field public Attributes any
---@field public EndOffset number
---@field public Name string
---@field public StartOffset number
local m = {}

---@abstract
---@return string
function m:GetSignature() end

System.Diagnostics.SymbolStore.ISymbolVariable = m
return m
