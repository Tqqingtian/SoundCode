---@class System.Security.Cryptography.CspParameters : System.Object
---@field public ProviderType number
---@field public ProviderName string
---@field public KeyContainerName string
---@field public KeyNumber number
---@field public Flags System.Security.Cryptography.CspProviderFlags
---@field public CryptoKeySecurity System.Security.AccessControl.CryptoKeySecurity
---@field public KeyPassword System.Security.SecureString
---@field public ParentWindowHandle System.IntPtr
local m = {}

System.Security.Cryptography.CspParameters = m
return m
