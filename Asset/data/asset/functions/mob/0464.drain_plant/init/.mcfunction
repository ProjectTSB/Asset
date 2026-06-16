#> asset:mob/0464.drain_plant/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/464/init

# スコア
    execute store result score @s General.Mob.Tick run random value -20..-5

# 周囲にプレイヤーがいるかを判定ならIsAttackMode:trueに
    # execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..4] run data modify storage asset:context this.IsAttackMode set value true
