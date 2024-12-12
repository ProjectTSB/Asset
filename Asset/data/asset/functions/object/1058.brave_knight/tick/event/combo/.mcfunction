#> asset:object/1058.brave_knight/tick/event/combo/
#
#
#
# @within function asset:object/1058.brave_knight/tick/event/attack_mode

# スコア加算
    scoreboard players add @s 1058.Combo 1

# コンボ
    execute if score @s 1058.Combo matches 3 run function asset:object/1058.brave_knight/tick/event/combo/0
    execute if score @s 1058.Combo matches 6 run function asset:object/1058.brave_knight/tick/event/combo/1
    execute if score @s 1058.Combo matches 12 run tag @s remove 1058.FacingLock

# リセット
    scoreboard players reset @s[scores={1058.Combo=12..}] 1058.Combo
