/*
 *Arur's super spectacular PDA project. First time really doing any intesne coding so we'll see how it goes!
 */

/obj/item/device/pda/newpda //This is going to be a test of an idea I have.
	name = "PDA"
	desc = "A portable microcomputer by Thinktronic Systems, LTD. Functionality determined by a preprogrammed ROM cartridge."
	icon = 'icons/obj/pda.dmi'
	icon_state = "pda-new2"
	item_state = "electronic"
	w_class = 1.0
	flags = FPRINT | TABLEPASS
	slot_flags = SLOT_ID | SLOT_BELT


	verb/toggle()//So the test of this was a success, but, I want more than just this. I'm going to need to add a close and open function in which it's only usable when opened and can only fit on your belt when closed. Also need to make it so once off you can't interact with it and you can't close it while on. So there's a lot more to do.
		set name = "Toggle PDA Power"
		set category = "Object"
		set src in usr

		if(!usr.canmove || usr.stat || usr.restrained())
			return 0

		switch(icon_state)
			if("pda-new2")
				src.icon_state = "pda-newoff2"
				usr << "You turn off the PDA."
			if("pda-newoff2")
				src.icon_state = "pda-new2"
				usr << "You turn on the PDA."
