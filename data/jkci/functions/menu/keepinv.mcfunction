scoreboard players add #keepinv jkci.mem 1
execute if score #keepinv jkci.mem matches 2.. run scoreboard players reset #keepinv jkci.mem

execute unless score #keepinv jkci.mem matches 1 in overworld run gamerule keepInventory false
execute unless score #keepinv jkci.mem matches 1 in the_nether run gamerule keepInventory false
execute unless score #keepinv jkci.mem matches 1 in the_end run gamerule keepInventory false
execute if score #keepinv jkci.mem matches 1 in overworld run gamerule keepInventory true
execute if score #keepinv jkci.mem matches 1 in the_nether run gamerule keepInventory true
execute if score #keepinv jkci.mem matches 1 in the_end run gamerule keepInventory true

function jkci:load