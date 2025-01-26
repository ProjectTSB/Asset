#> asset:mob/0372.tutankhamen/tick/skill/laser/facing_target.m
#
# ターゲットの方を向く
#
# @input args:
#   TargetName : String
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

# ホーミング
    $execute facing entity $(TargetName) feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-60 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^ ~ ~
