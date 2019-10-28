---@class System.IO.MonoIO : System.Object
---@field public FileAlreadyExistsHResult number @static
---@field public InvalidFileAttributes System.IO.FileAttributes @static
---@field public InvalidHandle System.IntPtr @static
---@field public ConsoleOutput System.IntPtr @static
---@field public ConsoleInput System.IntPtr @static
---@field public ConsoleError System.IntPtr @static
---@field public VolumeSeparatorChar number @static
---@field public DirectorySeparatorChar number @static
---@field public AltDirectorySeparatorChar number @static
---@field public PathSeparator number @static
local m = {}

---@overload fun(path:string, error:System.IO.MonoIOError): @static
---@static
---@param error System.IO.MonoIOError
---@return System.Exception
function m.GetException(error) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.CreateDirectory(path) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.RemoveDirectory(path) end

---@static
---@return string, System.IO.MonoIOError
function m.GetCurrentDirectory() end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.SetCurrentDirectory(path) end

---@static
---@param path string
---@param dest string
---@return boolean, System.IO.MonoIOError
function m.MoveFile(path, dest) end

---@static
---@param path string
---@param dest string
---@param overwrite boolean
---@return boolean, System.IO.MonoIOError
function m.CopyFile(path, dest, overwrite) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.DeleteFile(path) end

---@static
---@param sourceFileName string
---@param destinationFileName string
---@param destinationBackupFileName string
---@param ignoreMetadataErrors boolean
---@return boolean, System.IO.MonoIOError
function m.ReplaceFile(sourceFileName, destinationFileName, destinationBackupFileName, ignoreMetadataErrors) end

---@static
---@param path string
---@return System.IO.FileAttributes, System.IO.MonoIOError
function m.GetFileAttributes(path) end

---@static
---@param path string
---@param attrs System.IO.FileAttributes
---@return boolean, System.IO.MonoIOError
function m.SetFileAttributes(path, attrs) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@return System.IO.MonoFileType, System.IO.MonoIOError
function m.GetFileType(safeHandle) end

---@static
---@param pathWithPattern string
---@return System.IntPtr, System.String, System.Int32, System.Int32
function m.FindFirstFile(pathWithPattern) end

---@static
---@param hnd System.IntPtr
---@return boolean, System.String, System.Int32, System.Int32
function m.FindNextFile(hnd) end

---@static
---@param hnd System.IntPtr
---@return boolean
function m.FindCloseFile(hnd) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.Exists(path) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.ExistsFile(path) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.ExistsDirectory(path) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOError
function m.ExistsSymlink(path) end

---@static
---@param path string
---@return boolean, System.IO.MonoIOStat, System.IO.MonoIOError
function m.GetFileStat(path) end

---@static
---@param filename string
---@param mode System.IO.FileMode
---@param access System.IO.FileAccess
---@param share System.IO.FileShare
---@param options System.IO.FileOptions
---@return System.IntPtr, System.IO.MonoIOError
function m.Open(filename, mode, access, share, options) end

---@static
---@param handle System.IntPtr
---@return boolean, System.IO.MonoIOError
function m.Close(handle) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param dest string
---@param dest_offset number
---@param count number
---@return number, System.IO.MonoIOError
function m.Read(safeHandle, dest, dest_offset, count) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param src string
---@param src_offset number
---@param count number
---@return number, System.IO.MonoIOError
function m.Write(safeHandle, src, src_offset, count) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number, System.IO.MonoIOError
function m.Seek(safeHandle, offset, origin) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@return boolean, System.IO.MonoIOError
function m.Flush(safeHandle) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@return number, System.IO.MonoIOError
function m.GetLength(safeHandle) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param length number
---@return boolean, System.IO.MonoIOError
function m.SetLength(safeHandle, length) end

---@overload fun(path:string, creation_time:number, last_access_time:number, last_write_time:number):(, System.IO.MonoIOError) @static
---@overload fun(path:string, type:number, creation_time:number, last_access_time:number, last_write_time:number, dateTime:System.DateTime):(, System.IO.MonoIOError) @static
---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param creation_time number
---@param last_access_time number
---@param last_write_time number
---@return boolean, System.IO.MonoIOError
function m.SetFileTime(safeHandle, creation_time, last_access_time, last_write_time) end

---@static
---@param path string
---@param dateTime System.DateTime
---@return boolean, System.IO.MonoIOError
function m.SetCreationTime(path, dateTime) end

---@static
---@param path string
---@param dateTime System.DateTime
---@return boolean, System.IO.MonoIOError
function m.SetLastAccessTime(path, dateTime) end

---@static
---@param path string
---@param dateTime System.DateTime
---@return boolean, System.IO.MonoIOError
function m.SetLastWriteTime(path, dateTime) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param position number
---@param length number
---@return System.IO.MonoIOError
function m.Lock(safeHandle, position, length) end

---@static
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param position number
---@param length number
---@return System.IO.MonoIOError
function m.Unlock(safeHandle, position, length) end

---@static
---@return boolean, System.IntPtr, System.IntPtr, System.IO.MonoIOError
function m.CreatePipe() end

---@static
---@param source_process_handle System.IntPtr
---@param source_handle System.IntPtr
---@param target_process_handle System.IntPtr
---@param access number
---@param inherit number
---@param options number
---@return boolean, System.IntPtr, System.IO.MonoIOError
function m.DuplicateHandle(source_process_handle, source_handle, target_process_handle, access, inherit, options) end

---@static
---@param path string
---@return boolean, System.String
function m.RemapPath(path) end

System.IO.MonoIO = m
return m
