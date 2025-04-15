#> asset:mob/0437.lawless_iron_doll/hurt/active_50per
#
# 50％切ったときの動作をスタートする。一時的に無敵に。
#
# @within function asset:mob/0437.lawless_iron_doll/hurt/health_check

# フェイズ移行動作を実行
    tag @s add C5.Moveset.Transition
    tag @s remove C5.Moveset.BaseMove

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.5

# 全動作強制リセット
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset

# スコアリセット
    scoreboard players set @s General.Mob.Tick -1
