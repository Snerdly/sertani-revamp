/obj/effect/admin_log_trap
	name = "Admin Log Trap"
	desc = "Used to alert an admin when someone passes over it."
	icon = 'screen1.dmi'
	icon_state = "x2"
	anchored = 1.0
	unacidable = 1
	invisibility = 101

/obj/effect/admin_log_trap/HasEntered(AM as mob|obj)
	if(istype(AM,/mob))
		message_admins("[AM] ([AM:ckey]) stepped on an alerted tile in [get_area(src)]. <a href=\"byond://?src=%admin_ref%;teleto=\ref[src.loc]\">Jump</a>", admin_ref = 1)


//This could possibly be used as a security tile type system.
//Would just have to make it in the fashion of a floor tile. -Miv