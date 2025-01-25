#> asset:artifact/1065.magic_bullet/click/loop/bullet/main
#
# 弾のメイン処理
#
# @within function asset:artifact/1065.magic_bullet/click/loop/

# スコア
    scoreboard players add @s TL.Tick 1

# 演出
    execute if entity @s[scores={TL.Tick=..20}] run particle dust 0 0.8 1 0.8 ~ ~ ~ 0 0 0 0 1
    execute if entity @s[scores={TL.Tick=..3}] run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 1.8
    execute if entity @s[scores={TL.Tick=4..6}] run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 1.9
    execute if entity @s[scores={TL.Tick=7..9}] run playsound minecraft:entity.illusioner.prepare_blindness neutral @a ~ ~ ~ 0.5 2
    execute if entity @s[scores={TL.Tick=20}] run function asset:artifact/1065.magic_bullet/click/loop/bullet/vfx

# 移動処理
    execute if entity @s[scores={TL.Tick=20..}] run function asset:artifact/1065.magic_bullet/click/loop/bullet/move
    execute if entity @s[scores={TL.Tick=20..}] run scoreboard players reset $Recursive Temporary

# ダメージ
    execute if entity @s[scores={TL.Tick=21..}] if entity @e[type=#lib:living,tag=TL.TargetEntity,distance=..4,limit=1] run function asset:artifact/1065.magic_bullet/click/loop/bullet/damage/

# プレイヤーを狙う状態ならワープする
    execute if entity @s[tag=TL.AimToPlayer,scores={TL.Tick=20}] run function asset:artifact/1065.magic_bullet/click/loop/bullet/teleport

# 消滅
    execute if entity @s[scores={TL.Tick=40..}] run kill @s
    execute unless block ^ ^ ^0.25 #lib:no_collision run kill @s

# ループ処理
    schedule function asset:artifact/1065.magic_bullet/click/loop/ 1t replace
