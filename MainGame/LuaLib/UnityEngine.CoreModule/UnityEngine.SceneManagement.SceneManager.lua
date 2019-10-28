---@class UnityEngine.SceneManagement.SceneManager : System.Object
---@field public sceneCount number @static
---@field public sceneCountInBuildSettings number @static
local m = {}

---@static
---@return UnityEngine.SceneManagement.Scene
function m.GetActiveScene() end

---@static
---@param scene UnityEngine.SceneManagement.Scene
---@return boolean
function m.SetActiveScene(scene) end

---@static
---@param scenePath string
---@return UnityEngine.SceneManagement.Scene
function m.GetSceneByPath(scenePath) end

---@static
---@param name string
---@return UnityEngine.SceneManagement.Scene
function m.GetSceneByName(name) end

---@static
---@param buildIndex number
---@return UnityEngine.SceneManagement.Scene
function m.GetSceneByBuildIndex(buildIndex) end

---@static
---@param index number
---@return UnityEngine.SceneManagement.Scene
function m.GetSceneAt(index) end

---@overload fun(sceneName:string): @static
---@static
---@param sceneName string
---@param parameters UnityEngine.SceneManagement.CreateSceneParameters
---@return UnityEngine.SceneManagement.Scene
function m.CreateScene(sceneName, parameters) end

---@static
---@param sourceScene UnityEngine.SceneManagement.Scene
---@param destinationScene UnityEngine.SceneManagement.Scene
function m.MergeScenes(sourceScene, destinationScene) end

---@static
---@param go UnityEngine.GameObject
---@param scene UnityEngine.SceneManagement.Scene
function m.MoveGameObjectToScene(go, scene) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene, arg1:UnityEngine.SceneManagement.LoadSceneMode)
function m.add_sceneLoaded(value) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene, arg1:UnityEngine.SceneManagement.LoadSceneMode)
function m.remove_sceneLoaded(value) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene)
function m.add_sceneUnloaded(value) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene)
function m.remove_sceneUnloaded(value) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene, arg1:UnityEngine.SceneManagement.Scene)
function m.add_activeSceneChanged(value) end

---@static
---@param value fun(arg0:UnityEngine.SceneManagement.Scene, arg1:UnityEngine.SceneManagement.Scene)
function m.remove_activeSceneChanged(value) end

---@static
---@return UnityEngine.SceneManagement.Scene[]
function m.GetAllScenes() end

---@overload fun(sceneName:string) @static
---@overload fun(sceneName:string, parameters:UnityEngine.SceneManagement.LoadSceneParameters): @static
---@overload fun(sceneBuildIndex:number, mode:UnityEngine.SceneManagement.LoadSceneMode) @static
---@overload fun(sceneBuildIndex:number) @static
---@overload fun(sceneBuildIndex:number, parameters:UnityEngine.SceneManagement.LoadSceneParameters): @static
---@static
---@param sceneName string
---@param mode UnityEngine.SceneManagement.LoadSceneMode
function m.LoadScene(sceneName, mode) end

---@overload fun(sceneBuildIndex:number): @static
---@overload fun(sceneBuildIndex:number, parameters:UnityEngine.SceneManagement.LoadSceneParameters): @static
---@overload fun(sceneName:string, mode:UnityEngine.SceneManagement.LoadSceneMode): @static
---@overload fun(sceneName:string): @static
---@overload fun(sceneName:string, parameters:UnityEngine.SceneManagement.LoadSceneParameters): @static
---@static
---@param sceneBuildIndex number
---@param mode UnityEngine.SceneManagement.LoadSceneMode
---@return UnityEngine.AsyncOperation
function m.LoadSceneAsync(sceneBuildIndex, mode) end

---@overload fun(sceneBuildIndex:number): @static
---@overload fun(sceneName:string): @static
---@static
---@param scene UnityEngine.SceneManagement.Scene
---@return boolean
function m.UnloadScene(scene) end

---@overload fun(sceneName:string): @static
---@overload fun(scene:UnityEngine.SceneManagement.Scene): @static
---@overload fun(sceneBuildIndex:number, options:UnityEngine.SceneManagement.UnloadSceneOptions): @static
---@overload fun(sceneName:string, options:UnityEngine.SceneManagement.UnloadSceneOptions): @static
---@overload fun(scene:UnityEngine.SceneManagement.Scene, options:UnityEngine.SceneManagement.UnloadSceneOptions): @static
---@static
---@param sceneBuildIndex number
---@return UnityEngine.AsyncOperation
function m.UnloadSceneAsync(sceneBuildIndex) end

UnityEngine.SceneManagement.SceneManager = m
return m
