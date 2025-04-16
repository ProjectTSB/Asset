#> asset:artifact/1220.sacred_hardener/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1220.sacred_hardener/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    execute if entity @s[tag= XW.SetArmor] run function asset:artifact/common/use/mainhand
    execute if entity @s[tag= XW.SetArmor] run function asset:artifact/common/use/mainhand
    execute if entity @s[tag= XW.SetArmor] run function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    item replace entity @s weapon.offhand with air
    execute if entity @s[tag= XW.SetArmor] run function asset:artifact/1220.sacred_hardener/trigger/artifact
    execute if entity @s[tag=!XW.SetArmor] run function asset:artifact/1220.sacred_hardener/trigger/non-artifact
