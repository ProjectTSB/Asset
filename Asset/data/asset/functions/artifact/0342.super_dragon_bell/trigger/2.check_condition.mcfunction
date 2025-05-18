#> asset:artifact/0342.super_dragon_bell/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0342.super_dragon_bell/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# tpbanでは使用不可
    execute if predicate lib:is_ban_tp_area run function lib:message/artifact/can_not_use_here
    execute if predicate lib:is_ban_tp_area run tag @s remove CanUsed

# 天使が近くにいたら使用不可
    execute if entity @s[tag=CanUsed] if entity @e[type=#lib:living,tag=Enemy.Boss,distance=..32] run tellraw @a {"text":"スーパードラゴンは怯えて呼び出しに応じなかった","color":"red"}
    execute if entity @s[tag=CanUsed] if entity @e[type=#lib:living,tag=Enemy.Boss,distance=..32] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0342.super_dragon_bell/trigger/3.main
