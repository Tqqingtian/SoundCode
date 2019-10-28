---@class System.IO.IsolatedStorage.IsolatedStorageFile : System.IO.IsolatedStorage.IsolatedStorage
---@field public IsEnabled boolean @static
---@field public CurrentSize number
---@field public MaximumSize number
---@field public AvailableFreeSpace number
---@field public Quota number
---@field public UsedSize number
local m = {}

---@static
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@return System.Collections.IEnumerator
function m.GetEnumerator(scope) end

---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, domainIdentity:any, assemblyIdentity:any): @static
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, domainEvidenceType:System.Type, assemblyEvidenceType:System.Type): @static
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, applicationIdentity:any): @static
---@overload fun(scope:System.IO.IsolatedStorage.IsolatedStorageScope, applicationEvidenceType:System.Type): @static
---@static
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@param domainEvidence System.Security.Policy.Evidence
---@param domainEvidenceType System.Type
---@param assemblyEvidence System.Security.Policy.Evidence
---@param assemblyEvidenceType System.Type
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetStore(scope, domainEvidence, domainEvidenceType, assemblyEvidence, assemblyEvidenceType) end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetMachineStoreForApplication() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetMachineStoreForAssembly() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetMachineStoreForDomain() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetUserStoreForApplication() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetUserStoreForAssembly() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetUserStoreForDomain() end

---@static
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function m.GetUserStoreForSite() end

---@overload fun() @virtual
---@static
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
function m.Remove(scope) end

function m:Close() end

---@param dir string
function m:CreateDirectory(dir) end

---@overload fun(sourceFileName:string, destinationFileName:string, overwrite:boolean)
---@param sourceFileName string
---@param destinationFileName string
function m:CopyFile(sourceFileName, destinationFileName) end

---@param path string
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function m:CreateFile(path) end

---@param dir string
function m:DeleteDirectory(dir) end

---@param file string
function m:DeleteFile(file) end

---@virtual
function m:Dispose() end

---@param path string
---@return boolean
function m:DirectoryExists(path) end

---@param path string
---@return boolean
function m:FileExists(path) end

---@param path string
---@return System.DateTimeOffset
function m:GetCreationTime(path) end

---@param path string
---@return System.DateTimeOffset
function m:GetLastAccessTime(path) end

---@param path string
---@return System.DateTimeOffset
function m:GetLastWriteTime(path) end

---@overload fun():
---@param searchPattern string
---@return string[]
function m:GetDirectoryNames(searchPattern) end

---@overload fun():
---@param searchPattern string
---@return string[]
function m:GetFileNames(searchPattern) end

---@virtual
---@param newQuotaSize number
---@return boolean
function m:IncreaseQuotaTo(newQuotaSize) end

---@param sourceDirectoryName string
---@param destinationDirectoryName string
function m:MoveDirectory(sourceDirectoryName, destinationDirectoryName) end

---@param sourceFileName string
---@param destinationFileName string
function m:MoveFile(sourceFileName, destinationFileName) end

---@overload fun(path:string, mode:System.IO.FileMode, access:System.IO.FileAccess):
---@overload fun(path:string, mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare):
---@param path string
---@param mode System.IO.FileMode
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function m:OpenFile(path, mode) end

System.IO.IsolatedStorage.IsolatedStorageFile = m
return m
