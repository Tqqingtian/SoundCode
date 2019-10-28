---@class System.IO.DriveInfo : System.Object
---@field public AvailableFreeSpace number
---@field public TotalFreeSpace number
---@field public TotalSize number
---@field public VolumeLabel string
---@field public DriveFormat string
---@field public DriveType System.IO.DriveType
---@field public Name string
---@field public RootDirectory System.IO.DirectoryInfo
---@field public IsReady boolean
local m = {}

---@static
---@return System.IO.DriveInfo[]
function m.GetDrives() end

---@virtual
---@return string
function m:ToString() end

System.IO.DriveInfo = m
return m
