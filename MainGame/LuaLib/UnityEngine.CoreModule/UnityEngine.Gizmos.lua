---@class UnityEngine.Gizmos : System.Object
---@field public color UnityEngine.Color @static
---@field public matrix UnityEngine.Matrix4x4 @static
local m = {}

---@static
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
function m.DrawLine(from, to) end

---@static
---@param center UnityEngine.Vector3
---@param radius number
function m.DrawWireSphere(center, radius) end

---@static
---@param center UnityEngine.Vector3
---@param radius number
function m.DrawSphere(center, radius) end

---@static
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
function m.DrawWireCube(center, size) end

---@static
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
function m.DrawCube(center, size) end

---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, position:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number) @static
---@static
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param scale UnityEngine.Vector3
function m.DrawMesh(mesh, submeshIndex, position, rotation, scale) end

---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, scale:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, position:UnityEngine.Vector3) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number) @static
---@static
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param scale UnityEngine.Vector3
function m.DrawWireMesh(mesh, submeshIndex, position, rotation, scale) end

---@overload fun(center:UnityEngine.Vector3, name:string) @static
---@static
---@param center UnityEngine.Vector3
---@param name string
---@param allowScaling boolean
function m.DrawIcon(center, name, allowScaling) end

---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number) @static
---@static
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@param leftBorder number
---@param rightBorder number
---@param topBorder number
---@param bottomBorder number
---@param mat UnityEngine.Material
function m.DrawGUITexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder, mat) end

---@static
---@param center UnityEngine.Vector3
---@param fov number
---@param maxRange number
---@param minRange number
---@param aspect number
function m.DrawFrustum(center, fov, maxRange, minRange, aspect) end

---@overload fun(from:UnityEngine.Vector3, direction:UnityEngine.Vector3) @static
---@static
---@param r UnityEngine.Ray
function m.DrawRay(r) end

UnityEngine.Gizmos = m
return m
