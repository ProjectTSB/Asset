#> asset:artifact/1079.allochromatic/trigger/resonance_attack/4.main
#
# メイン処理部
#
# @within function asset:artifact/1079.allochromatic/trigger/resonance_attack/3.loop

# スコア
    scoreboard players add @s TZ.Tick 1

# Ownerを特定
    execute at @a if score @s TZ.OwnerID = @p UserID run tag @p add Owner

# 攻撃
    execute if entity @s[scores={TZ.Tick=3}] positioned ^ ^ ^-0.5 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
    execute if entity @s[scores={TZ.Tick=6}] positioned ^ ^ ^-0.5 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack

# 消滅
    execute if entity @s[scores={TZ.Tick=6..}] run kill @s

# ループ
    schedule function asset:artifact/1079.allochromatic/trigger/resonance_attack/3.loop 1t replace

# OwnerTagを削除
    tag @p[tag=Owner] remove Owner
