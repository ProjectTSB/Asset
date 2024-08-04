#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#
#
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/

# スコア
    scoreboard players add @s TL.Tick 1

# 演出
    execute if entity @s[scores={TL.Tick=..20}] run particle dust 0 0.8 1 0.8 ~ ~ ~ 0 0 0 0 1
    execute if entity @s[scores={TL.Tick=..9}] run playsound entity.illusioner.prepare_mirror neutral @a ~ ~ ~ 0.5 2
    execute if entity @s[scores={TL.Tick=20}] run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/vfx

# 移動処理
    execute if entity @s[scores={TL.Tick=20..}] run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/move
    execute if entity @s[scores={TL.Tick=20..}] run scoreboard players reset $Recursive Temporary

# 消滅
    execute if entity @s[scores={TL.Tick=60..}] run kill @s

# ループ処理
    schedule function asset:artifact/1065.magic_bullet/trigger/loop/ 1t replace
