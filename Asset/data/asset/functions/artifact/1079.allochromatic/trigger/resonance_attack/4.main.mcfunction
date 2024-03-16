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
# 範囲内の対象に、プレイヤーのいる方向から斬撃演出を出したい
    #execute if entity @s[scores={TZ.Tick=3}] as @e[type=#lib:living,tag=Enemy,distance=..5,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=Owner] eyes positioned ^ ^ ^0.5 facing ^ ^ ^-1 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
    #execute if entity @s[scores={TZ.Tick=6}] as @e[type=#lib:living,tag=Enemy,distance=..5,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=Owner] eyes positioned ^ ^ ^0.5 facing ^ ^ ^-1 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
    #execute if entity @s[scores={TZ.Tick=9}] as @e[type=#lib:living,tag=Enemy,distance=..5,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=Owner] eyes positioned ^ ^ ^0.5 facing ^ ^ ^-1 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack

#
    execute if entity @s[scores={TZ.Tick=3}] positioned ^ ^ ^-0.5 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
    execute if entity @s[scores={TZ.Tick=6}] positioned ^ ^ ^-0.5 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack
    execute if entity @s[scores={TZ.Tick=9}] positioned ^ ^ ^-0.5 run function asset:artifact/1079.allochromatic/trigger/resonance_attack/5.attack


# 消滅
    execute if entity @s[scores={TZ.Tick=20..}] run kill @s

# ループ
    schedule function asset:artifact/1079.allochromatic/trigger/resonance_attack/3.loop 1t replace