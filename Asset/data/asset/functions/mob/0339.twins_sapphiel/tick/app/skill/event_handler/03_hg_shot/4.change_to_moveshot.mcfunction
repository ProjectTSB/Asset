#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/4.change_to_moveshot
#
# アニメーションのイベントハンドラ Hg射撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_hg_shot/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Shot

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 側転射撃に移行
# 左右確認
    execute facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add 9F.Skill.Hg.Shot.MoveLeft
    execute unless entity @s[tag=9F.Skill.Hg.Shot.MoveLeft] run tag @s add 9F.Skill.Hg.Shot.MoveRight
