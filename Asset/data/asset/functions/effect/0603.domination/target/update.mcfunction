#> asset:effect/0603.domination/target/update
#
# ターゲットを更新する
#
# @within function
#   asset:effect/0603.domination/given/
#   asset:effect/0603.domination/re-given/

# ターゲットのUUIDを代入
    execute store result score @s 603.TargetUUID run data get storage asset:context this.MobUUID
