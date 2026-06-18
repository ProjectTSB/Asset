#> asset:object/1166.after_glow/tick/beem
#
# Objectのビームの攻撃処理
#
# @within asset:object/1166.after_glow/tick/
#> Private
# @private
    #declare score_holder $UserID
    #declare tag WF.Hit

# ビーム召喚(真上向く)
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:16711680,Scale:[2f,100f,2f],Frames:[20335,20336,20337]}
    execute rotated ~ ~-90 run function api:object/summon
# 音
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 2.0 1.5
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.dragon_fireball.explode player @a ~ ~ ~ 2.0 0.6
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2 1.4

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~1 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~2 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~3 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~4 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~5 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~6 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~7 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~8 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~9 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit
    execute positioned ~ ~10 ~ run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..1] add WF.Hit

    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=WF.Hit,tag=!Uninterferable] run function api:damage/
    function api:damage/reset
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable] remove WF.Hit
