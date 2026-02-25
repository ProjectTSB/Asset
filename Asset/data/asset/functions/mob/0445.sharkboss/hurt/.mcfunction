#> asset:mob/0445.sharkboss/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/445/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# ダウン中に殴られるとぶっ飛ぶ
    execute if entity @s[tag=CD.Down] run function asset:mob/0445.sharkboss/tick/action/utility/end
    execute if entity @s[tag=CD.Down] run tag @s add CD.Reserving
    execute if entity @s[tag=CD.Down] run tag @s add CD.Action.Down1
    execute if entity @s[tag=CD.Down] run tag @s remove CD.Down
