#> asset:mob/0311.blazing_inferno/hurt/active_50per
#
# 本気出すときのイベント
#
# @within function
#   asset:mob/0311.blazing_inferno/hurt/
#   asset:mob/0311.blazing_inferno/hurt/debug_health_50

# フェイズ移行動作を実行
    tag @s add 8N.Moveset.Transition
    tag @s remove 8N.Moveset.BaseMove

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.zoglin.attack hostile @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 0.5

# 全動作強制リセット
    function asset:mob/0311.blazing_inferno/tick/base_move/reset

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1
