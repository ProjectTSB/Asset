#> asset:mob/0410.heiloang/tick/util/servants_death_damage
#
# 汎用処理 眷属討伐時
#
# @within asset:mob/0410.heiloang/tick/util/servants_death

# 行動をキャンセル
    # 全アニメーション停止
        function asset:mob/0410.heiloang/tick/util/remove_animation_tag
    # イベント実行
        scoreboard players set @s BE.EventTimer 0
        tag @s add BE.Skill.Damage
