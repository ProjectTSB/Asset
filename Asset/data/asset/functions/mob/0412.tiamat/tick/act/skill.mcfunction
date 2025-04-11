#> asset:mob/0412.tiamat/tick/act/skill
#
# Mobのtick時の処理
#
# @within asset:mob/0412.tiamat/tick/act/

# 全アニメーション停止
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# ダークブレス
    scoreboard players set @s BG.EventTimer 0
    execute if entity @s[tag=BG.State.UseDark] run tag @s add BG.Skill.DarkBreath

# ヘルウィング
    execute unless entity @s[tag=BG.State.UseDark] run tag @s add BG.Skill.HellWing

# 終了
    execute if entity @s[tag=BG.State.UseDark] run return run tag @s remove BG.State.UseDark
    execute unless entity @s[tag=BG.State.UseDark] run return run tag @s add BG.State.UseDark
