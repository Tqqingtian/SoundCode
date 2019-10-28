---@class System.Reflection.AssemblyName : System.Object
---@field public ProcessorArchitecture System.Reflection.ProcessorArchitecture
---@field public Name string
---@field public CodeBase string
---@field public EscapedCodeBase string
---@field public CultureInfo System.Globalization.CultureInfo
---@field public Flags System.Reflection.AssemblyNameFlags
---@field public FullName string
---@field public HashAlgorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field public KeyPair System.Reflection.StrongNameKeyPair
---@field public Version System.Version
---@field public VersionCompatibility System.Configuration.Assemblies.AssemblyVersionCompatibility
---@field public CultureName string
---@field public ContentType System.Reflection.AssemblyContentType
local m = {}

---@virtual
---@return string
function m:ToString() end

---@return string
function m:GetPublicKey() end

---@return string
function m:GetPublicKeyToken() end

---@static
---@param reference System.Reflection.AssemblyName
---@param definition System.Reflection.AssemblyName
---@return boolean
function m.ReferenceMatchesDefinition(reference, definition) end

---@param publicKey string
function m:SetPublicKey(publicKey) end

---@param publicKeyToken string
function m:SetPublicKeyToken(publicKeyToken) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param sender any
function m:OnDeserialization(sender) end

---@static
---@param assemblyFile string
---@return System.Reflection.AssemblyName
function m.GetAssemblyName(assemblyFile) end

System.Reflection.AssemblyName = m
return m
