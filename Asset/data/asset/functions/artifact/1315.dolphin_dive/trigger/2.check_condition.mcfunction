#> asset:artifact/1315.dolphin_dive/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1315.dolphin_dive/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 地面に足をついている or 水面にいる(疑似的に判定)なら使用可能
    execute if entity @s[tag=CanUsed] unless function asset:artifact/1315.dolphin_dive/trigger/predicate/on_ground unless function asset:artifact/1315.dolphin_dive/trigger/predicate/water_surface run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1315.dolphin_dive/trigger/3.main
