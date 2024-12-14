#> asset:object/1063.magic_circle_of_rebirth/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1063/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵の方を向こうとする
    execute if score @s General.Object.Tick matches ..-1 run function asset:object/1063.magic_circle_of_rebirth/tick/turn/
# 魔法陣出現
    execute if score @s General.Object.Tick matches 0.. positioned ~ ~ ~ rotated ~ ~90 run function asset:object/1063.magic_circle_of_rebirth/tick/vfx/circle
# 炎弾を召喚
    execute if score @s General.Object.Tick matches 10 run function asset:object/1063.magic_circle_of_rebirth/tick/summon

# 消滅
    execute if score @s General.Object.Tick matches 15.. run kill @s
