#> asset:mob/0412.tiamat/tick/event/
#
# アニメーションイベントの振り分け処理
#
# @within asset:mob/0412.tiamat/tick/

# 登場
    execute if entity @s[tag=BG.Skill.Start] run function asset:mob/0412.tiamat/tick/event/start/

# 待機
    execute if entity @s[tag=BG.Skill.Idle] run function asset:mob/0412.tiamat/tick/event/idle/
# 移動
    execute if entity @s[tag=BG.Skill.Move] run function asset:mob/0412.tiamat/tick/event/move/

# ダークブレス
    execute if entity @s[tag=BG.Skill.DarkBreath] run function asset:mob/0412.tiamat/tick/event/darkbreath/
