#> asset:artifact/1024.brave_rod/trigger/combo/beam1_shot
#
#
#
# @within function asset:artifact/1024.brave_rod/trigger/combo/beam1

# 使用者です
    tag @s add SG.Used

# 輪っかを召喚
    execute rotated ~ ~90 run function asset:artifact/1024.brave_rod/trigger/combo/particle_ring

# ビームを撃つ
    function asset:artifact/1024.brave_rod/trigger/combo/laser

# 見た目レーザーのオブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:50175,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get @s Temporary
    function api:object/summon

# リセット
    scoreboard players reset @s Temporary

# 使用者解除
    tag @s remove SG.Used
