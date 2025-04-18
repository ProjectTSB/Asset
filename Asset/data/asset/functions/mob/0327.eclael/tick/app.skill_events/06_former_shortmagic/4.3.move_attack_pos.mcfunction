#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.3.move_attack_pos
#
# アニメーションのイベントハンドラ 前半・簡易魔法 攻撃地点更新
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

# 迷いなく動けば当たらず，途中で立ち止まれば当たる程度の位置に移動させる
# プレイヤーが歩いていそうな場合
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] run tag @s add 93.Temp.GeneralTarget
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] facing entity @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^8 ~ 0
# プレイヤーが走っていそうな場合
    execute if entity @s[tag=!93.Temp.GeneralTarget] unless entity @a[tag=!PlayerShouldInvulnerable,distance=..4] facing entity @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^14 ~ 0
