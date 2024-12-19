#> asset:mob/0237.lunatic_mage/init/
# @within asset:mob/alias/237/init

# super.init
    function asset:mob/super.init

scoreboard players set @s General.Mob.Tick -60
function asset:mob/0237.lunatic_mage/tick/skill/teleport/vfx
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["Object","Uninterferable","6L.SpawnPoint"]}
