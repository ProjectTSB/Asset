#> asset:mob/0224.fake_pumpkin/tick/summon_giant_pumpkin
#
#
#
# @within function asset:mob/0224.fake_pumpkin/tick/

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $5 Const

# ランダムでブレ
    execute if score $Random Temporary matches 0 facing entity @p eyes run tp @s ~ ~ ~ ~ ~
    execute if score $Random Temporary matches 1 facing entity @p eyes run tp @s ~ ~ ~ ~15 ~
    execute if score $Random Temporary matches 2 facing entity @p eyes run tp @s ~ ~ ~ ~-15 ~
    execute if score $Random Temporary matches 3 facing entity @p eyes run tp @s ~ ~ ~ ~30 ~
    execute if score $Random Temporary matches 4 facing entity @p eyes run tp @s ~ ~ ~ ~-30 ~

# リセット
    scoreboard players reset $Random Temporary

# 自分のカボチャの頭のCMDをFieldOverrideに突っ込む
    data modify storage api: Argument.FieldOverride.FaceID set from entity @s ArmorItems[3].tag.CustomModelData

# RotationをFieldOverrideへ
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation

# 召喚する
    data modify storage api: Argument.ID set value 2031
    execute positioned ~ ~1.5 ~ run function api:object/summon

# 消滅
    tp @s ~ -100 ~
    kill @s
