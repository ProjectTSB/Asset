#> asset:effect/0420.poi/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0420.poi/_/re-given

#> private
# @private
    #declare score_holder $MobUUID

# MP回復量引き継ぎ
    data modify storage asset:context this.MPHeal set from storage asset:context PreviousField.MPHeal

# スタックが10ならマーカーを赤くする
    scoreboard players operation $MobUUID Temporary = @s MobUUID
    execute if data storage asset:context {Stack:10} anchored eyes positioned ^ ^ ^ as @e[type=item_display,tag=1211.Marker,distance=..1] if score @s 1211.MobUUID = $MobUUID Temporary run function asset:effect/0420.poi/re-given/update_color

# 演出
    execute unless data storage asset:context {Stack:10} run function asset:effect/0420.poi/re-given/sfx.m with storage asset:context
    execute if data storage asset:context {Stack:10} run playsound block.note_block.bit player @a ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $MobUUID Temporary
