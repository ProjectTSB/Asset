#> asset:effect/0399.dual_rhythm_guard/tick/contact
#
# @within function asset:effect/0399.dual_rhythm_guard/tick/

# 足元を基準に、水平方向へ中心を揃えた1×2×1のboxで接触を判定する
# 本体が付与するthisタグで自身を除外する
    execute positioned ~-0.5 ~ ~-0.5 run tag @a[gamemode=!spectator,tag=!this,tag=!Death,distance=..3,dx=0,dy=1,dz=0] add 399.Contact

# 接触した相手がいればバフを移譲する
    execute if entity @a[tag=399.Contact,distance=..3,limit=1] run function asset:effect/0399.dual_rhythm_guard/tick/transfer

# 接触判定用のタグを削除する
    tag @a[tag=399.Contact,distance=..3] remove 399.Contact
