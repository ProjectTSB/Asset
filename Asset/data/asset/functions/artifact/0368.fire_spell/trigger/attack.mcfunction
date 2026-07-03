#> asset:artifact/0368.fire_spell/trigger/attack
#
# 魔法攻撃を行う
#
# @within function asset:artifact/0368.fire_spell/trigger/3.main

# 演出
    particle flame ~ ~1.2 ~ 0.3 0.3 0.3 0.05 30 normal @a
    playsound entity.blaze.shoot player @a ~ ~ ~ 1 1.2 0
    playsound entity.blaze.hurt player @a ~ ~ ~ 0.8 1.5 0

# ダメージ
    data modify storage api: Argument.Damage set value 24f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..1,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset
