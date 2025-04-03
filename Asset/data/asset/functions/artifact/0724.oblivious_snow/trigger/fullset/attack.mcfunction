#> asset:artifact/0724.oblivious_snow/trigger/fullset/attack
#
# 攻撃
#
# @within function asset:artifact/0724.oblivious_snow/trigger/fullset/trigger

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run particle snowflake ~ ~1.2 ~ 0.5 0.5 0.5 0.1 50 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.5 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound minecraft:block.powder_snow.step player @a ~ ~ ~ 1 0.25 0

# CDスコアをセット
    scoreboard players set @s K4.AttackCD 40

# ダメージ設定
    data modify storage api: Argument.Damage set value 100.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..64,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset
