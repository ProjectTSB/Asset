#> asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around
#
# プレイヤーの周りにTPする
#
# @within function asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/

# マーカーを使用して移動する
    # マーカーを今の座標に
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # プレイヤーのところにマーカーを移動
        execute at @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 拡散値
        data modify storage lib: Argument.Bounds set value [[6d,6d],[0d,0d],[6d,6d]]
    # 拡散する
        execute as 0-0-0-0-0 at @s run function lib:spread_entity/
    # 0-0-0-0-0の埋まりを回避するループ処理
        execute at 0-0-0-0-0 facing entity @s feet unless block ^ ^ ^ #lib:no_collision run function asset:mob/0365.frestchika_v2/ai/animation/1_0_tackle_pre/tp_around_loop
    # 0-0-0-0-0をプレイヤーの方に向かせる
        execute as 0-0-0-0-0 at @s facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=nearest,limit=1] feet run tp @s ^ ^ ^ ~ ~
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0365.frestchika_v2/ai/general/1.teleport
    # 演出もしておく
        function asset:mob/0365.frestchika_v2/ai/general/3.teleport_effect/

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0