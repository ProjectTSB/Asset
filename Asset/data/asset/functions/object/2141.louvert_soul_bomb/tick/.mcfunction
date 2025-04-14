#> asset:object/2141.louvert_soul_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2141/tick

# 通常処理
    function asset:object/2141.louvert_soul_bomb/tick/process
# 高難易度かつプレイヤーが範囲内なら加速する
    execute if score @s General.Object.Tick matches -2147483648..2147483647 if predicate api:global_vars/difficulty/min/hard if entity @a[tag=!PlayerShouldInvulnerable,distance=..4,limit=1] run function asset:object/2141.louvert_soul_bomb/tick/process
