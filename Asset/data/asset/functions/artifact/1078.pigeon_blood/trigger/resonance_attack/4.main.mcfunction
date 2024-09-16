#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/4.main
#
# 共鳴攻撃用entityのメイン処理部
#
# @within function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/3.loop

# スコアを増やす
    scoreboard players add @s TY.Tick 1

# Ownerを特定
    execute at @a if score @s TY.OwnerID = @p UserID run tag @p add Owner

# 射撃する 2,3回目で異なる位置で実行する
    execute if entity @s[scores={TY.Tick=1}] at @p[tag=Owner] run tp @s ^ ^4 ^0.2
    execute if entity @s[scores={TY.Tick=1}] run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot
    execute if entity @s[scores={TY.Tick=6}] at @p[tag=Owner] run tp @s ^1.2 ^3.5 ^0.4
    execute if entity @s[scores={TY.Tick=6}] at @s run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot
    execute if entity @s[scores={TY.Tick=11}] at @p[tag=Owner] run tp @s ^-1.2 ^3.5 ^0.4
    execute if entity @s[scores={TY.Tick=11}] at @s run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot

# 消滅
    execute if entity @s[scores={TY.Tick=11..}] run kill @s

# スケジュールループ
    schedule function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/3.loop 1t replace

# Ownerを削除
    tag @p[tag=Owner] remove Owner
