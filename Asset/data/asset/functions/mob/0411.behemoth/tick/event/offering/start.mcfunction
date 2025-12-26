#> asset:mob/0411.behemoth/tick/event/offering/start
#
# ソウルオファリング ヘイローンから呼び出す
#
# @within asset:mob/0410.heiloang/tick/event/offering/

# タグ消去
    function asset:mob/0411.behemoth/tick/util/remove_animation_tag

# 無敵化
    function asset:mob/0411.behemoth/tick/util/start_invulnerable
    
# イベント実行
    scoreboard players set @s BF.EventTimer 0
    tag @s add BF.Skill.Offering
