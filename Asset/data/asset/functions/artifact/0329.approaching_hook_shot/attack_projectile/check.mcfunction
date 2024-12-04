#> asset:artifact/0329.approaching_hook_shot/attack_projectile/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/329/attack_projectile/check


# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed] as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] at @s store result score $isBanTPArea Temporary if predicate lib:is_ban_tp_area
    execute if score $isBanTPArea Temporary matches 1 run tag @s remove CanUsed
    execute if score $isBanTPArea Temporary matches 1 run function lib:message/artifact/can_not_use_here
    scoreboard players reset $isBanTPArea Temporary