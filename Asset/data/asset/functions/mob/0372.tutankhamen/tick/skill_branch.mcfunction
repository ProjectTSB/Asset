#> asset:mob/0372.tutankhamen/tick/skill_branch
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/

# 開幕演出
    execute if entity @s[tag=AC.Opening] run function asset:mob/0372.tutankhamen/tick/skill/opening/

# レーザー
    execute if entity @s[tag=AC.Laser] run function asset:mob/0372.tutankhamen/tick/skill/laser/

# いっぱい撃つ
    execute if entity @s[tag=AC.ManyShoot] run function asset:mob/0372.tutankhamen/tick/skill/many_shoot/
