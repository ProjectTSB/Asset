#> asset:artifact/1080.allochromatic_empty/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1080.allochromatic_empty/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    execute if entity @s[tag=U0.Main] run function asset:artifact/common/check_condition/mainhand
    execute if entity @s[tag= U0.Off] run function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1080.allochromatic_empty/trigger/3.main

# リセット
# ここでリセットするのはトリガーを重くしないため
    tag @s remove U0.Main
    tag @s remove U0.Off
