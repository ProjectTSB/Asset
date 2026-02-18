#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.2.schedule_player_land
#
# アニメーションのイベントハンドラ Ktワープ連撃 回避判定
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.1.schedule_movetospear

# 突き中のルビエルに怯み判定を発生させる
# 死亡後のプレイヤーが判定を出さないようにする
    execute if entity @s[tag=!PlayerShouldInvulnerable] at @e[type=wither_skeleton,tag=9G.Root,tag=9G.Skill.Kt.Warp] positioned ^ ^ ^1 if entity @s[distance=..2] as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Skill.Kt.Warp,sort=nearest,limit=1] at @s run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/7.3.schedule_rubiel_damage

# 終了
    tag @s remove 9G.Temp.Target.JumpAvoid
