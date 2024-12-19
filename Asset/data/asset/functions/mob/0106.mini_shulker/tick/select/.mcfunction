#> asset:mob/0106.mini_shulker/tick/select/
# @within function
#   asset:mob/0106.mini_shulker/tick/
#   asset:mob/0106.mini_shulker/attack/shoot

# プレイヤーを1名ターゲットする
# ただし間に壁がないプレイヤーに限定する
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25,sort=nearest] run function asset:mob/0106.mini_shulker/tick/select/foreach

# いなければ待機形態に移行
    execute unless entity @a[tag=2Y.Target,distance=..25,limit=1] run return fail
# ターゲットがいれば攻撃形態に移行
    scoreboard players set @s General.Mob.Tick 500
    execute as @a[tag=2Y.Target,distance=..25,limit=1] store result storage asset:context this.TargetID int 1 run scoreboard players get @s UserID

# リセット
    tag @a[distance=..25] remove 2Y.Target
