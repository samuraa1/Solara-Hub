if identifyexecutor and identifyexecutor() == "Solara" then
  local old = getrawmetatable
  getrawmetatable = function(obj)
      if obj == _G then
          return nil
      end
      return old(obj)
  end
end
loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/674d9ddb4e166e2c21a6f1045385db7b97177e7aa47a74441707c07405d38117/download"))()
