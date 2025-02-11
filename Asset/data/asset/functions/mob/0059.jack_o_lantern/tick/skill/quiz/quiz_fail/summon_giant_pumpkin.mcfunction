#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/summon_giant_pumpkin
#
# 偽物を巨大カボチャへ変身させる
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 本体のカウントを1減らす
    scoreboard players remove @e[type=zombie,tag=this,distance=..30,sort=nearest,limit=1] 1N.FakeCount 1

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..4

# ランダムでブレ
    execute if score $Random Temporary matches 0 facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
    execute if score $Random Temporary matches 1 facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~15 ~
    execute if score $Random Temporary matches 2 facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~-15 ~
    execute if score $Random Temporary matches 3 facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~30 ~
    execute if score $Random Temporary matches 4 facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~-30 ~

# リセット
    scoreboard players reset $Random Temporary

# 自分のカボチャの頭のCMDをFieldOverrideに突っ込む
    data modify storage api: Argument.FieldOverride.FaceID set from entity @s ArmorItems[3].tag.CustomModelData

# 召喚する
    execute as @e[type=zombie,tag=this,distance=..40] rotated as @e[type=zombie,scores={MobID=224},distance=..0.01,sort=nearest,limit=1] run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/penalty

# 消滅
    function api:mob/remove
