#> asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point3
#
# 雷を落とす
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/predict_thunder/predict_point2

# 演出
    playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 最初の1回だけは偏差位置に落ちるようにする
# 念のためdistanceは広めに取っておく

# SpreadMarkerをを召喚し、拡散
    summon marker ~ ~ ~ {Tags:["26.SpreadMarker"]}
    execute if entity @s[tag=26.NotFirst] run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute if entity @s[tag=26.NotFirst] as @e[type=marker,tag=26.SpreadMarker,distance=..0.01,limit=1] run function lib:spread_entity/

# 召喚
    data modify storage api: Argument.ID set value 2057
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Thunder
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @e[type=marker,tag=26.SpreadMarker,distance=..50,limit=1] run function api:object/summon

# 最初の1回ではないこと検知用Tagを付与
    tag @s add 26.NotFirst

# リセット
    kill @e[type=marker,tag=26.SpreadMarker,distance=..50]
