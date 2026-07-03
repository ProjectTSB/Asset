#> asset:object/2221.aurora_scaffold/tick/check_block
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/

execute if data storage asset:context this.CheckBreak{1:true} unless block ~00 ~00 ~00 cyan_stained_glass run data modify storage asset:context this.CheckBreak.1 set value false
execute if data storage asset:context this.CheckBreak{2:true} unless block ~01 ~00 ~00 cyan_stained_glass run data modify storage asset:context this.CheckBreak.2 set value false
execute if data storage asset:context this.CheckBreak{3:true} unless block ~01 ~00 ~01 cyan_stained_glass run data modify storage asset:context this.CheckBreak.3 set value false
execute if data storage asset:context this.CheckBreak{4:true} unless block ~01 ~00 ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.4 set value false
execute if data storage asset:context this.CheckBreak{5:true} unless block ~-1 ~00 ~00 cyan_stained_glass run data modify storage asset:context this.CheckBreak.5 set value false
execute if data storage asset:context this.CheckBreak{6:true} unless block ~-1 ~00 ~01 cyan_stained_glass run data modify storage asset:context this.CheckBreak.6 set value false
execute if data storage asset:context this.CheckBreak{7:true} unless block ~-1 ~00 ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.7 set value false
execute if data storage asset:context this.CheckBreak{8:true} unless block ~00 ~00 ~01 cyan_stained_glass run data modify storage asset:context this.CheckBreak.8 set value false
execute if data storage asset:context this.CheckBreak{9:true} unless block ~00 ~00 ~-1 cyan_stained_glass run data modify storage asset:context this.CheckBreak.9 set value false
