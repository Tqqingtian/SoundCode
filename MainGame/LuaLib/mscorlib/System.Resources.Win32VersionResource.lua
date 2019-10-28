---@class System.Resources.Win32VersionResource : System.Resources.Win32Resource
---@field public WellKnownProperties string[]
---@field public Version string
---@field public Item string
---@field public Comments string
---@field public CompanyName string
---@field public LegalCopyright string
---@field public LegalTrademarks string
---@field public OriginalFilename string
---@field public ProductName string
---@field public ProductVersion string
---@field public InternalName string
---@field public FileDescription string
---@field public FileLanguage number
---@field public FileVersion string
local m = {}

---@virtual
---@param ms System.IO.Stream
function m:WriteTo(ms) end

System.Resources.Win32VersionResource = m
return m
