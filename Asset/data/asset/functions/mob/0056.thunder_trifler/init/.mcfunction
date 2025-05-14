#> asset:mob/0056.thunder_trifler/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/56/init

# Blesslessならパンチ弓へ
    execute if predicate api:global_vars/difficulty/min/3_blessless run item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"punch",lvl:1s}]}
