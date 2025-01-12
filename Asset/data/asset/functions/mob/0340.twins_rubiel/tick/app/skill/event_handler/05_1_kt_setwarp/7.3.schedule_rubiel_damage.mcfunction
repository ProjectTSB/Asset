#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.3.schedule_rubiel_damage
#
# アニメーションのイベントハンドラ Ktワープ連撃 怯み判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.2.schedule_player_land

# 突きの怯みアニメーション再生
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    tag @s add 9G.Skill.Kt.Damage.Spear

# 演出
    execute as @a[tag=9G.Temp.Target.JumpAvoid,sort=nearest,limit=1] at @s run particle explosion ~ ~0.2 ~ 0 0 0 0 1
    execute as @a[tag=9G.Temp.Target.JumpAvoid,sort=nearest,limit=1] at @s run particle firework ~ ~0.5 ~ 0 0 0 0.2 10

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
