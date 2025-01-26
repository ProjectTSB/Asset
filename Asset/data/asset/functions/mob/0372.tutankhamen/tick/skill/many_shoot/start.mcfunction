#> asset:mob/0372.tutankhamen/tick/skill/many_shoot/start
#
# 攻撃開始
#
# @within function asset:mob/0372.tutankhamen/tick/skill/many_shoot/

playsound item.trident.throw hostile @a ~ ~3 ~ 2 0.7
execute at @e[type=marker,tag=AC.ModelLocator.Weapon] run particle crit ~ ~ ~ 0 0 0 0.5 25
