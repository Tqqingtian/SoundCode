---@class UnityEngine.Profiling.Memory.Experimental.MemoryProfiler : System.Object
local m = {}

---@static
---@param value fun(obj:UnityEngine.Profiling.Memory.Experimental.MetaData)
function m.add_createMetaData(value) end

---@static
---@param value fun(obj:UnityEngine.Profiling.Memory.Experimental.MetaData)
function m.remove_createMetaData(value) end

---@overload fun(path:string, finishCallback:fun(arg1:string, arg2:boolean)) @static
---@static
---@param path string
---@param finishCallback fun(arg1:string, arg2:boolean)
---@param captureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
function m.TakeSnapshot(path, finishCallback, captureFlags) end

---@overload fun(finishCallback:fun(arg1:string, arg2:boolean)) @static
---@static
---@param finishCallback fun(arg1:string, arg2:boolean)
---@param captureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
function m.TakeTempSnapshot(finishCallback, captureFlags) end

UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = m
return m
