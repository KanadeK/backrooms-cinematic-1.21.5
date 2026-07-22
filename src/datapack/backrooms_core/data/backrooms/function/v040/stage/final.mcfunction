kill @e[tag=br_crawler]
kill @e[tag=br_watcher]
tellraw @s [{text:'EVIDENCE RECOVERED: ',color:'dark_aqua'},{score:{name:'@s',objective:'br_clues'},color:'aqua'},{text:'/3. ',color:'dark_gray'},{text:'A complete set may change what waits beyond the threshold.',color:'gray'}]
