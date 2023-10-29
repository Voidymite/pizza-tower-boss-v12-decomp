// enums
enum states 
{
    normal,
    grabbed,
    finishingblow,
    tumble,
    titlescreen, // titled the "do nothing" state
    ejected,
    firemouth,
    fireass, // duplicates
	firebutt, // duplicates
    transitioncutscene,
    slap,
    tacklecharge,
    cheesepep,
    cheeseball,
    cheesepepstick,
    boxxedpep,
    pistolaim,
	wallclimb,
    climbwall,
    knightpepslopes,
    portal,
    secondjump,
    chainsawbump,
    handstandjump,
    gottreasure,
    knightpep,
    knightpepattack,
    meteorpep,
    bombpep,
    grabbing,
    chainsawpogo,
    shotgunjump,
    stunned,
    highjump,
	hookshot,
    chainsaw,
    facestomp,
    timesup,
    machroll,
    pistol,
    shotgun,
    machfreefall,
    superslam,
    slam,
    skateboard,
    grind,
    grab,
    punch,
    backkick,
    uppunch,
    shoulder,
    backbreaker, // duplicates
	taunt, // duplicates
    bossdefeat,
    bossintro,
    smirk,
    pizzathrow,
    gameover,
    Sjumpland,
    freefallprep,
    runonball,
    boulder,
    keyget,
    tackle,
    slipnslide,
    ladder,
    jump,
    victory,
    comingoutdoor,
    Sjump,
	superjump,
    Sjumpprep,
	superjumpprep,
    crouch,
    crouchjump,
    crouchslide,
    mach1,
    mach2,
    mach3,
	mach4, // doesn't exist but will send the player into mach 4 if used
    machslide,
    bump,
    hurt,
    freefall,
    freefallland,
    hang,
    door,
    barrelnormal,
    barrelfall,
    barrelmach,
    barrelfloat,
    barrelcrouch,
    barrelslipnslide,
    barrelroll,
    current,
    taxi,
    pogo,
    rideweenie, // duplicates
	weeniemount, // duplicates
    faceplant,
    idle, // took me a while to remember that the states. enum is universal and not justl imited to obj_player. got so confused about this enum for a sec
    turn,
    walk,
    land,
    hit,
    stun,
	throw,
}
pal_swap_init_system(shd_pal_swapper);
ini_open("saveData.ini");
global.deserthighscore = ini_read_string("Highscore", "desert", 0);
global.mansionhighscore = ini_read_string("Highscore", "mansion", 0);
global.factoryhighscore = ini_read_string("Highscore", "factory", 0);
global.sewerhighscore = ini_read_string("Highscore", "sewer", 0);
global.freezerhighscore = ini_read_string("Highscore", "freezer", 0);
global.entrancehighscore = ini_read_string("Highscore", "entrance", 0);
global.medievalhighscore = ini_read_string("Highscore", "medieval", 0);
global.deserttoppin1 = ini_read_string("Toppin", "desert1", 0);
global.deserttoppin2 = ini_read_string("Toppin", "desert2", 0);
global.deserttoppin3 = ini_read_string("Toppin", "desert3", 0);
global.deserttoppin4 = ini_read_string("Toppin", "desert4", 0);
global.deserttoppin5 = ini_read_string("Toppin", "desert5", 0);
global.mansiontoppin1 = ini_read_string("Toppin", "mansion1", 0);
global.mansiontoppin2 = ini_read_string("Toppin", "mansion2", 0);
global.mansiontoppin3 = ini_read_string("Toppin", "mansion3", 0);
global.mansiontoppin4 = ini_read_string("Toppin", "mansion4", 0);
global.mansiontoppin5 = ini_read_string("Toppin", "mansion5", 0);
global.factorytoppin1 = ini_read_string("Toppin", "factory1", 0);
global.factorytoppin2 = ini_read_string("Toppin", "factory2", 0);
global.factorytoppin3 = ini_read_string("Toppin", "factory3", 0);
global.factorytoppin4 = ini_read_string("Toppin", "factory4", 0);
global.factorytoppin5 = ini_read_string("Toppin", "factory5", 0);
global.sewertoppin1 = ini_read_string("Toppin", "sewer1", 0);
global.sewertoppin2 = ini_read_string("Toppin", "sewer2", 0);
global.sewertoppin3 = ini_read_string("Toppin", "sewer3", 0);
global.sewertoppin4 = ini_read_string("Toppin", "sewer4", 0);
global.sewertoppin5 = ini_read_string("Toppin", "sewer5", 0);
global.freezertoppin1 = ini_read_string("Toppin", "freezer1", 0);
global.freezertoppin2 = ini_read_string("Toppin", "freezer2", 0);
global.freezertoppin3 = ini_read_string("Toppin", "freezer3", 0);
global.freezertoppin4 = ini_read_string("Toppin", "freezer4", 0);
global.freezertoppin5 = ini_read_string("Toppin", "freezer5", 0);
global.entrancetoppin1 = ini_read_string("Toppin", "entrance1", 0);
global.entrancetoppin2 = ini_read_string("Toppin", "entrance2", 0);
global.entrancetoppin3 = ini_read_string("Toppin", "entrance3", 0);
global.entrancetoppin4 = ini_read_string("Toppin", "entrance4", 0);
global.entrancetoppin5 = ini_read_string("Toppin", "entrance5", 0);
global.medievaltoppin1 = ini_read_string("Toppin", "medieval1", 0);
global.medievaltoppin2 = ini_read_string("Toppin", "medieval2", 0);
global.medievaltoppin3 = ini_read_string("Toppin", "medieval3", 0);
global.medievaltoppin4 = ini_read_string("Toppin", "medieval4", 0);
global.medievaltoppin5 = ini_read_string("Toppin", "medieval5", 0);
ini_close();
