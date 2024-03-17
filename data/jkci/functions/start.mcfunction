spawnpoint @a ~ ~ ~
setworldspawn ~ ~ ~
tp @a @s
clear @a
gamemode survival @a
advancement revoke @a through jkci:root
scoreboard players reset @a
effect give @a saturation 2 5 true
scoreboard players set #state jkci.mem 1
execute unless score #time jkci.mem matches 1.. run scoreboard players set #time jkci.mem 1800
scoreboard players operation #time_ jkci.mem = #time jkci.mem
scoreboard objectives remove jkci.death
scoreboard objectives add jkci.death deathCount
scoreboard objectives setdisplay list jkci.death
scoreboard objectives setdisplay sidebar jkci.mem
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "物品种类收集挑战","bold": true,"color": "gold"},{"text": "游戏已开始！","color": "green"},{"text": "\n按照设置，游戏将在 ","color": "green"},{"score":{"name": "#time","objective": "jkci.mem"},"color": "gold"},{"text": " 秒后结束。","color": "green"},{"text": "\n在 侧边栏 可以看到玩家们收集到的分数，\n在 Tab列表 可以看到玩家们的死亡数。","color": "aqua"}]
playsound entity.ender_dragon.growl player @a
schedule function jkci:countdown 1s