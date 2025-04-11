#> asset:mob/0411.behemoth/tick/act/skill
#
# Mobのtick時の処理
#
# @within asset:mob/0411.behemoth/tick/act/

# 全アニメーション停止
    function asset:mob/0411.behemoth/tick/util/remove_animation_tag

# フレアブレス
    scoreboard players set @s BF.EventTimer 0
    execute if entity @s[tag=BF.State.UseFlare] run tag @s add BF.Skill.FlareBreath

# フラッテン
    execute unless entity @s[tag=BF.State.UseFlare] run tag @s add BF.Skill.Flatten

# 終了
    execute if entity @s[tag=BF.State.UseFlare] run return run tag @s remove BF.State.UseFlare
    execute unless entity @s[tag=BF.State.UseFlare] run return run tag @s add BF.State.UseFlare
