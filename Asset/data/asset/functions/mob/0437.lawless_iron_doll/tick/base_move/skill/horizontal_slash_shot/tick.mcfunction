#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick
#
# 水平に飛んでいくえらくデカい斬撃のtick処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/windup

# 薙ぎ払い、そして飛んでいくオブジェクト

# リセット
    execute if score @s General.Mob.Tick matches 55.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
