---@class System.Collections.BitArray : System.Object
---@field public Item boolean
---@field public Length number
---@field public Count number
---@field public SyncRoot any
---@field public IsReadOnly boolean
---@field public IsSynchronized boolean
local m = {}

---@param index number
---@return boolean
function m:Get(index) end

---@param index number
---@param value boolean
function m:Set(index, value) end

---@param value boolean
function m:SetAll(value) end

---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function m:And(value) end

---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function m:Or(value) end

---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function m:Xor(value) end

---@return System.Collections.BitArray
function m:Not() end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Collections.BitArray = m
return m
