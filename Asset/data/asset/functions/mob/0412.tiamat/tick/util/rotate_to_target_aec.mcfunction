#> asset:mob/0412.tiamat/tick/util/rotate_to_target_aec
#
# 汎用処理 対象を向く
#
# @within asset:mob/0412.tiamat/tick/event/**

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @e[type=area_effect_cloud,tag=BG.Temp.AttackRotation,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
