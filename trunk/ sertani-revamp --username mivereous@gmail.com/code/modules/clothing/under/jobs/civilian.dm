//Alphabetical order of civilian jobs.

/obj/item/clothing/under/rank/bartender
	desc = "It looks like it could use some more flair."
	name = "bartender's uniform"
	icon_state = "ba_suit"
	item_state = "ba_suit"
	color = "ba_suit"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/captain //Alright, technically not a 'civilian' but its better then giving a .dm file for a single define.
	desc = "It's a blue jumpsuit with some gold markings denoting the rank of \"Captain\"."
	name = "captain's jumpsuit"
	icon_state = "captain"
	item_state = "caparmor"
	color = "captain"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/rank/command //This is also not civillian but two defines don't justify a .dm
	desc = "It's a blue and black jumpsuit with some gold markings denoting the wearer a member of the command staff."
	name = "command jumpsuit"
	icon_state = "commandalt"
	item_state = "commandalt"
	color = "commandalt"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/rank/cargo
	name = "quartermaster's jumpsuit"
	desc = "It's a jumpsuit worn by the quartermaster. It's specially designed to prevent back injuries caused by pushing paper."
	icon_state = "qm"
	item_state = "lb_suit"
	color = "qm"


/obj/item/clothing/under/rank/cargotech
	name = "cargo technician's jumpsuit"
	desc = "Shooooorts! They're comfy and easy to wear!"
	icon_state = "cargotech"
	item_state = "lb_suit"
	color = "cargo"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/chaplain
	desc = "It's a black jumpsuit, often worn by religious folk."
	name = "chaplain's jumpsuit"
	icon_state = "chaplain"
	item_state = "bl_suit"
	color = "chapblack"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/chef
	desc = "It's an apron which is given only to the most <b>hardcore</b> chefs in space."
	name = "chef's uniform"
	icon_state = "chef"
	color = "chef"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/clown
	name = "clown suit"
	desc = "<i>'HONK!'</i>"
	icon_state = "clown"
	item_state = "clown"
	color = "clown"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/head_of_personnel
	desc = "It's a jumpsuit worn by someone who works in the position of \"Head of Personnel\"."
	name = "head of personnel's jumpsuit"
	icon_state = "hop"
	item_state = "b_suit"
	color = "hop"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/hydroponics
	desc = "It's a jumpsuit designed to protect against minor plant-related hazards."
	name = "botanist's jumpsuit"
	icon_state = "hydroponics"
	item_state = "g_suit"
	color = "hydroponics"
	permeability_coefficient = 0.50
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/internalaffairs
	desc = "The plain, professional attire of an Internal Affairs Agent. The collar is <i>immaculately</i> starched."
	name = "Internal Affairs uniform"
	icon_state = "internalaffairs"
	item_state = "internalaffairs"
	color = "internalaffairs"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/rank/janitor
	desc = "It's the official uniform of the station's janitor. It has minor protection from biohazards."
	name = "janitor's jumpsuit"
	icon_state = "janitor"
	color = "janitor"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 10, rad = 0)
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/lawyer
	desc = "Slick threads."
	name = "Lawyer suit"
	flags = FPRINT | TABLEPASS


/obj/item/clothing/under/lawyer/black
	icon_state = "lawyer_black"
	item_state = "lawyer_black"
	color = "lawyer_black"


/obj/item/clothing/under/lawyer/female
	icon_state = "black_suit_fem"
	item_state = "black_suit_fem"
	color = "black_suit_fem"


/obj/item/clothing/under/lawyer/red
	icon_state = "lawyer_red"
	item_state = "lawyer_red"
	color = "lawyer_red"


/obj/item/clothing/under/lawyer/blue
	icon_state = "lawyer_blue"
	item_state = "lawyer_blue"
	color = "lawyer_blue"


/obj/item/clothing/under/lawyer/bluesuit
	name = "Blue Suit"
	desc = "A classy suit and tie"
	icon_state = "bluesuit"
	item_state = "bluesuit"
	color = "bluesuit"


/obj/item/clothing/under/lawyer/purpsuit
	name = "Purple Suit"
	icon_state = "lawyer_purp"
	item_state = "lawyer_purp"
	color = "lawyer_purp"

/obj/item/clothing/under/lawyer/oldman
	name = "Old Man's Suit"
	desc = "A classic suit for the older gentleman with built in back support."
	icon_state = "oldman"
	item_state = "oldman"
	color = "oldman"


/obj/item/clothing/under/librarian
	name = "sensible suit"
	desc = "It's very... sensible."
	icon_state = "red_suit"
	item_state = "red_suit"
	color = "red_suit"

/obj/item/clothing/under/mime
	name = "mime's outfit"
	desc = "It's not very colourful."
	icon_state = "mime"
	item_state = "mime"
	color = "mime"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/under/rank/miner
	desc = "It's a snappy jumpsuit with a sturdy set of overalls. It is very dirty."
	name = "shaft miner's jumpsuit"
	icon_state = "miner"
	item_state = "miner"
	color = "miner"

/obj/item/clothing/under/rank/mineralt
	desc = "A black and green jumpsuit that is the standard Mazra mining jumpsuit."
	name = "miner's jumpsuit"
	icon_state = "mineralt"
	item_state = "mineralt"
	color = "mineralt"


/*
 * Reporter
 */
 /obj/item/clothing/suit/storage/reporter
	name = "grey coat"
	desc = "A stylish coat commonly worn by reporters all across space. The label reads 'Made by LexCorp clothing division'."
	icon = 'icons/obj/clothing/suits.dmi'
	icon_state = "reportercoat"
	item_state = "reporter"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	allowed = list(/obj/item/weapon/tank/emergency_oxygen,/obj/item/device/flashlight,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/device/taperecorder,/obj/machinery/camera,/obj/item/weapon/pen,/obj/item/weapon/paper)

/obj/item/clothing/head/reporter
	name = "aged hat"
	desc = "An aged, gray fedora."
	icon_state = "reporter"
	item_state = "reporter"
	siemens_coefficient = 0.9

/obj/item/clothing/tie/presspass
	name = "press pass"
	desc = "A reporter's authentication holocard, protected by a clear, plastic flip case."
	icon = 'items.dmi'
	icon_state = "presspass"
	item_state = "card-id"
	w_class = 1

	attack_self(mob/user)
		if(user.r_hand == src || user.l_hand == src)
			for(var/mob/O in viewers(user, null))
				O.show_message(text("\blue [] flips open the [] with a sense of familiarity, presenting it clearly before you.", user, src), 1)
		return