#> asset:mob/0424.icicle_leg/tick/stomp
#
#
#
# @within function asset:mob/0424.icicle_leg/tick/

# 演出
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.5

# スコアセット、着地後の行動が持続攻撃になる
    scoreboard players set @s General.Mob.Tick 32

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20470}

# ダメージ設定
    data modify storage lib: Argument.Damage set value 40f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/

# リセット
    function lib:damage/reset

# パーティクル
    particle smoke ~ ~0.1 ~ 1 0.1 1 0.02 100
    particle dust 0.4 0.8 1 1.5 ~ ~0.1 ~ 2 0.1 2 0.02 50
    particle dust 0.6 0.9 1 1.5 ~ ~0.1 ~ 2 0.1 2 0.02 50
