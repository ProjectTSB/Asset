#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/summon_giant_pumpkin
#
# 偽物を巨大カボチャへ変身させる
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_fail/glowing

# 本体のカウントを1減らす
    scoreboard players remove @e[type=husk,tag=this,distance=..30,sort=nearest,limit=1] 1N.FakeCount 1

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

# Rotation[0]をFieldOverrideへ
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]

# 召喚する
    data modify storage api: Argument.ID set value 2031
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Giant
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=husk,tag=this,distance=..30,limit=1] MobUUID
    execute positioned ~ ~1.5 ~ run function api:object/summon

# 消滅
    function api:mob/remove
