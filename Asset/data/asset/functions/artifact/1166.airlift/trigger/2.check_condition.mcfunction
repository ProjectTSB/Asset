#> asset:artifact/1166.airlift/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1166.airlift/trigger/1.trigger

#> prv
# @private
    #declare tag AssetMob

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く api:mob/is_asset_mobがマージされるまではこれで行かせて
    execute unless entity @e[tag=Enemy,tag=AssetMob,distance=..30] unless entity @e[tag=Enemy.Boss,distance=..30] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1166.airlift/trigger/3.main
