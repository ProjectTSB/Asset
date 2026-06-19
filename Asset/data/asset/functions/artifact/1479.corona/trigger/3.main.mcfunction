#> asset:artifact/1479.corona/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1479.corona/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..64,sort=nearest,limit=1] run playsound minecraft:block.fire.ambient player @a ~ ~ ~ 2.5 1.8 0
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..64,sort=nearest,limit=1] run playsound minecraft:entity.firework_rocket.large_blast player @a ~ ~ ~ 1.2 1.2 0
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..64,sort=nearest,limit=1] run particle flame ~ ~1.3 ~ 0.4 0.3 0.4 0 10 normal @a
    # ダメージ
    data modify storage api: Argument.Damage set value 140.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..64,limit=1] at @s run function api:damage/

    # リセット
    function api:damage/reset
