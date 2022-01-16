local validweapons = {
"PISTOL",
"PISTOL50",
"ASSAULTRIFLE",
"COMBATPDW",
"APPISTOL",
"COMBATPISTOL",
"CARBINERIFLE",
"MACHINEPISTOL",
"MICROSMG",
"MINISMG",
"SNSPISTOL",
"HEAVYPISTOL",
"SNSPISTOL_MK2",
"PISTOL_MK2",
"VINTAGEPISTOL",
"CERAMICPISTOL",
"SMG",
"ASSAULTSMG",
"SMG_MK2",
"ASSAULTSHOTGUN",
"HEAVYSHOTGUN",
"ADVANCEDRIFLE",
"SPECIALCARBINE",
"BULLPUPRIFLE",
"BULLPUPRIFLE_MK2",
"SPECIALCARBINE_MK2",
"ASSAULTRIFLE_MK2",
"CARBINERIFLE_MK2",
"COMPACTRIFLE",
"MILITARYRIFLE",
"MG",
"COMBATMG",
"COMBATMG_MK2",
"GUSENBERG"
}


function applyExtended()
    local ped = GetPlayerPed(-1)
    local gun = GetSelectedPedWeapon(ped)
      for k,v in pairs(validweapons) do
        if  gun == GetHashKey("WEAPON_"..v) then
          TriggerServerEvent('fuego:remove')
            GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_"..v), GetHashKey("COMPONENT_"..v.."_CLIP_02")) 
       end
       print(v)
    end
end

RegisterNetEvent('fuego:extended')
AddEventHandler('fuego:extended', function()
  applyExtended()
end)