#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/2.end
#
# アニメーションのイベントハンドラ Kt移動突き・怯み
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_3_kt_damage_spear/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Damage.Spear

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
