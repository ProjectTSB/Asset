#> asset:mob/0265.dark_familiar/tick/shoot
#
# 召喚する
#
# @within function asset:mob/0265.dark_familiar/tick/

#> Private
# @private
    #declare tag SpreadMarker

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1.5 2

# プレイヤーの方を見る
    tp @s ~ ~ ~ facing entity @p feet

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 1

# 拡散
    execute facing entity @p[gamemode=!spectator,distance=..30] eyes as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# マーカーをkill
    kill @e[type=marker,tag=SpreadMarker]

# 速度設定
# ハード以上なら確率で低速になる
    data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if predicate api:global_vars/difficulty/min/3_blessless if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.Speed set value 1

# 召喚
    data modify storage api: Argument.ID set value 2078
    data modify storage api: Argument.FieldOverride.Damage set value 20.0f
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=husk,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon

# 消滅
    kill @s
