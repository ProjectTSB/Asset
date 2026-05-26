#> asset:mob/0412.tiamat/tick/event/offering/start
#
# ソウルオファリング ヘイローンから呼び出す
#
# @within asset:mob/0410.heiloang/tick/event/offering/

# タグ消去
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# 無敵化
    function asset:mob/0412.tiamat/tick/util/start_invulnerable

# イベント実行
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.Offering
