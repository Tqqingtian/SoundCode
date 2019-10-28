---@class System.WindowsConsoleDriver : System.Object
---@field public BackgroundColor System.ConsoleColor
---@field public BufferHeight number
---@field public BufferWidth number
---@field public CapsLock boolean
---@field public CursorLeft number
---@field public CursorSize number
---@field public CursorTop number
---@field public CursorVisible boolean
---@field public ForegroundColor System.ConsoleColor
---@field public KeyAvailable boolean
---@field public Initialized boolean
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
---@param frequency number
---@param duration number
function m:Beep(frequency, duration) end

---@virtual
function m:Clear() end

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

---@virtual
function m:Init() end

---@virtual
---@return string
function m:ReadLine() end

---@virtual
---@param intercept boolean
---@return System.ConsoleKeyInfo
function m:ReadKey(intercept) end

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

System.WindowsConsoleDriver = m
return m
