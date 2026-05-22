#> asset:artifact/0371.water_spell/trigger/attack
#
# 神器のメイン処理部
#
# @within function asset:artifact/0371.water_spell/trigger/3.main

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 200
    playsound minecraft:entity.squid.death player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.jump player @a ~ ~ ~ 1 2
    playsound minecraft:entity.dolphin.splash player @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 24f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset
