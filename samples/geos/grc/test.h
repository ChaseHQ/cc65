//
//	This file was generated by the GEOS Resource Compiler
//
//	DO NOT EDIT! Any changes will be lost!
//
//	Edit proper resource file instead.
//

void smenu1 (void);
void smenu2 (void);
void smenu3 (void);

const void subMenu1 = {
	(char)0, (char)42,
	(int)15, (int)62,
	(char)(3 | VERTICAL),
	"subitem1", (char)MENU_ACTION, (int)smenu1,
	"mubitem2", (char)MENU_ACTION|DYN_SUB_MENU, (int)smenu2,
	"subitem3", (char)MENU_ACTION, (int)smenu3,
};

void EnterDeskTop (void);

const void mainMenu = {
	(char)0, (char)15,
	(int)0, (int)75,
	(char)(2 | HORIZONTAL),
	"sub menu1", (char)SUB_MENU, (int)&subMenu1,
	"quit", (char)MENU_ACTION, (int)EnterDeskTop,
};

