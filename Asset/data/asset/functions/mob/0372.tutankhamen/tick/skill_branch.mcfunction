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

# ハイパーレーザー
    execute if entity @s[tag=AC.HyperLaser] run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/

# 棺召喚
    execute if entity @s[tag=AC.Coffin] run function asset:mob/0372.tutankhamen/tick/skill/coffin/

# ダッシュ
    # サイドダッシュ
        execute if entity @s[tag=AC.Dash.Side] run function asset:mob/0372.tutankhamen/tick/skill/dash/side/
    # ダッシュスラッシュ
        execute if entity @s[tag=AC.Dash.Slash] run function asset:mob/0372.tutankhamen/tick/skill/dash/dash_slash/
    # ファラオ・ぶちかまし
        execute if entity @s[tag=AC.Dash.Charge] run function asset:mob/0372.tutankhamen/tick/skill/dash/charge/
