---@class System.Security.Principal.WindowsIdentity : System.Security.Claims.ClaimsIdentity
---@field public DefaultIssuer string @static
---@field public AuthenticationType string
---@field public IsAnonymous boolean
---@field public IsAuthenticated boolean
---@field public IsGuest boolean
---@field public IsSystem boolean
---@field public Name string
---@field public Token System.IntPtr
---@field public Groups System.Security.Principal.IdentityReferenceCollection
---@field public ImpersonationLevel System.Security.Principal.TokenImpersonationLevel
---@field public Owner System.Security.Principal.SecurityIdentifier
---@field public User System.Security.Principal.SecurityIdentifier
---@field public AccessToken Microsoft.Win32.SafeHandles.SafeAccessTokenHandle
---@field public DeviceClaims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
---@field public UserClaims System.Collections.Generic.IEnumerable_1_System_Security_Claims_Claim_
local m = {}

---@virtual
function m:Dispose() end

---@static
---@return System.Security.Principal.WindowsIdentity
function m.GetAnonymous() end

---@overload fun(ifImpersonating:boolean): @static
---@overload fun(desiredAccess:System.Security.Principal.TokenAccessLevels): @static
---@static
---@return System.Security.Principal.WindowsIdentity
function m.GetCurrent() end

---@overload fun(userToken:System.IntPtr): @static
---@virtual
---@return System.Security.Principal.WindowsImpersonationContext
function m:Impersonate() end

---@overload fun(safeAccessTokenHandle:Microsoft.Win32.SafeHandles.SafeAccessTokenHandle, func:fun():): @static
---@static
---@param safeAccessTokenHandle Microsoft.Win32.SafeHandles.SafeAccessTokenHandle
---@param action fun()
function m.RunImpersonated(safeAccessTokenHandle, action) end

System.Security.Principal.WindowsIdentity = m
return m
