#> asset:mob/0106.mini_shulker/tick/select/
# @within function
#   asset:mob/0106.mini_shulker/tick/
#   asset:mob/0106.mini_shulker/tick/attack/reset

# プレイヤーを1名ターゲットする
# ただし間に壁がないプレイヤーに限定する
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25,sort=nearest] run function asset:mob/0106.mini_shulker/tick/select/foreach

# いなければ待機形態に移行
    execute unless data storage asset:context this.Target.ID run return fail
# ターゲットがいれば攻撃形態に移行
    return 1
