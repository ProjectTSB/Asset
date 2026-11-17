#> asset:object/1215.miniature_volcano/tick/teleport/no_target
#
#
#
# @within function asset:object/1215.miniature_volcano/tick/teleport/

#> Private
# @private
    #declare tag SpreadMarker

# まず自分を適当に拡散させる
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    function lib:spread_entity/

# facingで逆を向く
    execute at @s facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
