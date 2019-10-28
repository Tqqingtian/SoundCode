---@class System.Runtime.Remoting.Lifetime.LeaseManager : System.Object
local m = {}

---@param timeSpan System.TimeSpan
function m:SetPollTime(timeSpan) end

---@param identity System.Runtime.Remoting.ServerIdentity
function m:TrackLifetime(identity) end

---@param identity System.Runtime.Remoting.ServerIdentity
function m:StopTrackingLifetime(identity) end

function m:StartManager() end

function m:StopManager() end

---@param state any
function m:ManageLeases(state) end

System.Runtime.Remoting.Lifetime.LeaseManager = m
return m
