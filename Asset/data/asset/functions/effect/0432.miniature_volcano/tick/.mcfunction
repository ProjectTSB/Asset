#> asset:effect/0432.miniature_volcano/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0432.miniature_volcano/_/tick

#
    execute store result storage asset:context this.Interval._ int 0.9999999999 run data get storage asset:context this.Interval._
    execute if data storage asset:context this.Interval{_:0} anchored eyes positioned ^ ^ ^ positioned ~ ~1 ~ rotated ~ -90 run function asset:effect/0432.miniature_volcano/tick/summon
