#> asset:object/2046.white_magic/tick/debuff
#
# デバフ付与処理
#
# @within function asset:object/2046.white_magic/tick/hit

#> Private
# @private
    #declare score_holder $Difficulty

# 白呪(ID:613)を付与
# Stack = (難易度値 -1) Duration = 50(難易度値 + 1)Tick

# 難易度値を取得しスコアへ代入
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 付与
    data modify storage api: Argument.ID set value 613
    data modify storage api: Argument.Stack set from storage asset:context this.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
