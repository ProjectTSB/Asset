#> asset:artifact/0600.xtal/trigger/5.slash
#
#
#
# @within function asset:artifact/0600.xtal/trigger/4.wait_time

#> Private
# @private
    #declare tag Target
    #declare score_holder $Random

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2

# 乱数取得
    execute store result score $Random Temporary run random value 0..2
# パーティクル
    execute if score $Random Temporary matches 0 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/trigger/particle/particle_1
    execute if score $Random Temporary matches 1 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/trigger/particle/particle_2
    execute if score $Random Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0600.xtal/trigger/particle/particle_3
# リセット
    scoreboard players reset $Random Temporary

# ターゲット選定
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] add Target

# ダメージ
    data modify storage api: Argument.Damage set value 300.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,tag=!Uninterferable,distance=..6,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセットする
    scoreboard players reset @s GO.Time
    tag @e[type=#lib:living,tag=Target,tag=!Uninterferable,distance=..6] add Target
