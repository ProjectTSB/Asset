#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

#> 行き先マーカー
# @private
#declare tag SpreadMarker

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute as @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] run function lib:forward_spreader/circle

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:1,Range:60,MovePerStep:0.5}
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2042
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..128,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..128,limit=1]

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
