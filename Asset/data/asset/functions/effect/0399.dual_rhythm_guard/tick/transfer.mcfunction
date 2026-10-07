#> asset:effect/0399.dual_rhythm_guard/tick/transfer
#
# @within function asset:effect/0399.dual_rhythm_guard/tick/contact

# 自身の削除を予約する
# 補正はイベント終了後のremoveで解除する
    data modify storage api: Argument.ID set value 399
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# 同時に複数人へ触れた場合は最も近い1人だけ
    data modify storage api: Argument.ID set value 400
    data modify storage api: Argument.Duration set from storage asset:context this.BoostDuration
    data modify storage api: Argument.FieldOverride.Amount set from storage asset:context this.BoostAmount
    execute as @p[tag=399.Contact,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 自身にクールダウンを付与する
    data modify storage api: Argument.ID set value 401
    data modify storage api: Argument.Duration set from storage asset:context this.Cooldown
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 守りの光がほどけ、相手へ力を渡したことを知らせる
    particle enchant ~ ~1 ~ 0.4 0.5 0.4 0.2 16 normal @a
    playsound block.amethyst_block.hit player @a ~ ~ ~ 0.8 0.8
