#> asset:effect/0420.poi/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0420.poi/_/re-given

#> private
# @private
    #declare score_holder $E0420.MobUUID

# Field引き継ぎ
    data modify storage asset:context this.MPHeal set from storage asset:context PreviousField.MPHeal
    data modify storage asset:context this.Damage set from storage asset:context PreviousField.Damage
    data modify storage asset:context this.OriginID set from storage asset:context PreviousField.OriginID

# スタックが10ならマーカーを赤くする
    scoreboard players operation $E0420.MobUUID Temporary = @s MobUUID
    execute if data storage asset:context {Stack:10} anchored eyes positioned ^ ^ ^ as @e[type=item_display,tag=O1211.Marker,distance=..1] if score @s O1211.MobUUID = $E0420.MobUUID Temporary run data merge entity @s {glow_color_override:16711680, item:{tag:{display:{color:16711680}}}}

# 演出
    execute unless data storage asset:context {Stack:10} run function asset:effect/0420.poi/re-given/sfx.m with storage asset:context
    execute if data storage asset:context {Stack:10} run playsound block.note_block.bit player @a ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $E0420.MobUUID
