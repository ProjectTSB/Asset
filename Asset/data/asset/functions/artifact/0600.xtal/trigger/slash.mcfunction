#> asset:artifact/0600.xtal/trigger/slash
#
#
#
# @within function asset:artifact/0600.xtal/trigger/schedule/wait

#> Private
# @private
    #declare tag Target
    #declare score_holder $Random

# 演出
    playsound item.trident.throw player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    function asset:artifact/0600.xtal/trigger/object_vfx

# ターゲット選定
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3] add Target

# ダメージ
    data modify storage api: Argument.Damage set value 300.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,tag=!Uninterferable,distance=..6,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセットする
    scoreboard players reset @s GO.Time
    tag @e[type=#lib:living,tag=Target,tag=!Uninterferable,distance=..6] remove Target
