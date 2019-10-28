---@class UnityEngine.FrameTimingManager : System.Object
local m = {}

---@static
function m.CaptureFrameTimings() end

---@static
---@param numFrames number
---@param timings UnityEngine.FrameTiming[]
---@return number
function m.GetLatestTimings(numFrames, timings) end

---@static
---@return number
function m.GetVSyncsPerSecond() end

---@static
---@return number
function m.GetGpuTimerFrequency() end

---@static
---@return number
function m.GetCpuTimerFrequency() end

UnityEngine.FrameTimingManager = m
return m
