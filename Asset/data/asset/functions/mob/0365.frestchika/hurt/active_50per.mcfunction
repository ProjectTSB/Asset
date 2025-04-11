#> asset:mob/0365.frestchika/hurt/active_50per
#
#
#
# @within function asset:mob/0365.frestchika/hurt/health_check

# フェイズ移行動作を実行
    tag @s add A5.Moveset.Transition
    tag @s remove A5.Moveset.BaseMove

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.5

# 全動作強制リセット
    function asset:mob/0365.frestchika/tick/base_move/skill/reset

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1
