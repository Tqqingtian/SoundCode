---@class System.TermInfoDriver : System.Object
---@field public Initialized boolean
---@field public BackgroundColor System.ConsoleColor
---@field public ForegroundColor System.ConsoleColor
---@field public BufferHeight number
---@field public BufferWidth number
---@field public CapsLock boolean
---@field public CursorLeft number
---@field public CursorTop number
---@field public CursorVisible boolean
---@field public CursorSize number
---@field public KeyAvailable boolean
---@field public LargestWindowHeight number
---@field public LargestWindowWidth number
---@field public NumberLock boolean
---@field public Title string
---@field public TreatControlCAsInput boolean
---@field public WindowHeight number
---@field public WindowLeft number
---@field public WindowTop number
---@field public WindowWidth number
local m = {}

---@virtual
function m:Init() end

---@overload fun(c:number)
---@param key System.ConsoleKeyInfo
function m:WriteSpecialKey(key) end

---@overload fun(c:number):
---@param key System.ConsoleKeyInfo
---@return boolean
function m:IsSpecialKey(key) end

---@virtual
function m:Clear() end

---@virtual
---@param frequency number
---@param duration number
function m:Beep(frequency, duration) end

---@virtual
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar number
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function m:MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end

---@param index number
---@param count number
---@return number
function m:Read(index, count) end

---@virtual
---@param intercept boolean
---@return System.ConsoleKeyInfo
function m:ReadKey(intercept) end

---@virtual
---@return string
function m:ReadLine() end

---@return string
function m:ReadToEnd() end

---@virtual
function m:ResetColor() end

---@virtual
---@param width number
---@param height number
function m:SetBufferSize(width, height) end

---@virtual
---@param left number
---@param top number
function m:SetCursorPosition(left, top) end

---@virtual
---@param left number
---@param top number
function m:SetWindowPosition(left, top) end

---@virtual
---@param width number
---@param height number
function m:SetWindowSize(width, height) end

System.TermInfoDriver = m
return m
