#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/end_attack
#
# なんか喋りつつ構えを戻す
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S7.Death

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1015}] add S7.Death

# テスト用メッセージ
    tellraw @a[distance=..50] [{"text":"<","color":"white"},{"text":"Tultaria","color":"#a33033"},{"text":"> 諦めが悪いようね。","color":"white"}]

# 必殺技のループモーションを停止
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_loop/stop
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_rod_spin/stop

# 待機モーションを再生
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/play

# 必殺技終了モーション再生
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_end/play
