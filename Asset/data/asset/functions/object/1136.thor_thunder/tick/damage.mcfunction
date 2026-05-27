#> asset:object/1136.thor_thunder/tick/damage
#
#
#
# @within function asset:object/1136.thor_thunder/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出用
    particle firework ~ ~ ~ 0 0 0 0.2 20 normal @a
    particle wax_off ~ ~6 ~ 0.4 5 0.4 0 20 normal @a
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 0.3 0.95
    function asset:object/1136.thor_thunder/tick/summon_laser

# ダメージ
    execute store result storage api: Argument.Damage int 1 run function asset:object/1136.thor_thunder/tick/get_damage.m with storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..2.5] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
