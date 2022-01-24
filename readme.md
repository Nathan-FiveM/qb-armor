
Run the armor.sql to insert the new column needed in players table




(Normal Armor) 
Add after progress in qb-smallresources/client/consumables.lua above SetPedArmour(PlayerPedId(), 75) function (above line 442)

```
TriggerServerEvent('qb-setarmor:Server:SetPlayerArmor', 75)
```


(Heavery armor) 
Add after progress in qb-smallresources/client/consumables.lua above SetPedArmour(PlayerPedId(), 100) function (above line 471)

```
TriggerServerEvent('qb-setarmor:Server:SetPlayerArmor', 100)
```

Note: if you use a older version of oxmysql that uses the exports change the sql statement in server.lua
Currently it is set to do a check every 30 seconds and update value, you can change this at anytime in the top of the client.lua