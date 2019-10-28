---@class System.IO.FileSystemInfo : System.MarshalByRefObject
---@field public FullName string
---@field public Extension string
---@field public Name string
---@field public Exists boolean
---@field public CreationTime System.DateTime
---@field public CreationTimeUtc System.DateTime
---@field public LastAccessTime System.DateTime
---@field public LastAccessTimeUtc System.DateTime
---@field public LastWriteTime System.DateTime
---@field public LastWriteTimeUtc System.DateTime
---@field public Attributes System.IO.FileAttributes
local m = {}

---@abstract
function m:Delete() end

function m:Refresh() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.IO.FileSystemInfo = m
return m
