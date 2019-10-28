---@class UnityEngine.GL : System.Object
---@field public TRIANGLES number @static
---@field public TRIANGLE_STRIP number @static
---@field public QUADS number @static
---@field public LINES number @static
---@field public LINE_STRIP number @static
---@field public wireframe boolean @static
---@field public sRGBWrite boolean @static
---@field public invertCulling boolean @static
---@field public modelview UnityEngine.Matrix4x4 @static
local m = {}

---@static
---@param x number
---@param y number
---@param z number
function m.Vertex3(x, y, z) end

---@static
---@param v UnityEngine.Vector3
function m.Vertex(v) end

---@static
---@param x number
---@param y number
---@param z number
function m.TexCoord3(x, y, z) end

---@static
---@param v UnityEngine.Vector3
function m.TexCoord(v) end

---@static
---@param x number
---@param y number
function m.TexCoord2(x, y) end

---@static
---@param unit number
---@param x number
---@param y number
---@param z number
function m.MultiTexCoord3(unit, x, y, z) end

---@static
---@param unit number
---@param v UnityEngine.Vector3
function m.MultiTexCoord(unit, v) end

---@static
---@param unit number
---@param x number
---@param y number
function m.MultiTexCoord2(unit, x, y) end

---@static
---@param c UnityEngine.Color
function m.Color(c) end

---@static
function m.Flush() end

---@static
function m.RenderTargetBarrier() end

---@static
---@param m UnityEngine.Matrix4x4
function m.MultMatrix(m) end

---@overload fun(callback:System.IntPtr, eventID:number) @static
---@static
---@param eventID number
function m.IssuePluginEvent(eventID) end

---@static
---@param revertBackFaces boolean
function m.SetRevertBackfacing(revertBackFaces) end

---@static
function m.PushMatrix() end

---@static
function m.PopMatrix() end

---@static
function m.LoadIdentity() end

---@static
function m.LoadOrtho() end

---@overload fun(left:number, right:number, bottom:number, top:number) @static
---@static
function m.LoadPixelMatrix() end

---@static
---@param mat UnityEngine.Matrix4x4
function m.LoadProjectionMatrix(mat) end

---@static
function m.InvalidateState() end

---@static
---@param proj UnityEngine.Matrix4x4
---@param renderIntoTexture boolean
---@return UnityEngine.Matrix4x4
function m.GetGPUProjectionMatrix(proj, renderIntoTexture) end

---@static
---@param mode number
function m.Begin(mode) end

---@static
function m.End() end

---@overload fun(clearDepth:boolean, clearColor:boolean, backgroundColor:UnityEngine.Color) @static
---@static
---@param clearDepth boolean
---@param clearColor boolean
---@param backgroundColor UnityEngine.Color
---@param depth number
function m.Clear(clearDepth, clearColor, backgroundColor, depth) end

---@static
---@param pixelRect UnityEngine.Rect
function m.Viewport(pixelRect) end

---@static
---@param clearDepth boolean
---@param camera UnityEngine.Camera
function m.ClearWithSkybox(clearDepth, camera) end

UnityEngine.GL = m
return m
