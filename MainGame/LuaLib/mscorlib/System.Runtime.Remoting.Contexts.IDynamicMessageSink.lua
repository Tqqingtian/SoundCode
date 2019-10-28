---@class System.Runtime.Remoting.Contexts.IDynamicMessageSink : table
local m = {}

---@abstract
---@param replyMsg System.Runtime.Remoting.Messaging.IMessage
---@param bCliSide boolean
---@param bAsync boolean
function m:ProcessMessageFinish(replyMsg, bCliSide, bAsync) end

---@abstract
---@param reqMsg System.Runtime.Remoting.Messaging.IMessage
---@param bCliSide boolean
---@param bAsync boolean
function m:ProcessMessageStart(reqMsg, bCliSide, bAsync) end

System.Runtime.Remoting.Contexts.IDynamicMessageSink = m
return m
