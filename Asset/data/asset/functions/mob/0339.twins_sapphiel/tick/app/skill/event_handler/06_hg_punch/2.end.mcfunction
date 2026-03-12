#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main

# アニメーション停止
    function asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation

# 側転射撃に遷移
    tag @s remove 9F.Skill.Hg.Punch
    # 左右確認
        execute facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add 9F.Skill.Hg.Shot.MoveLeft
        execute unless entity @s[tag=9F.Skill.Hg.Shot.MoveLeft] run tag @s add 9F.Skill.Hg.Shot.MoveRight

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
